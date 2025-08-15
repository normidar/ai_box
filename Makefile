.DEFAULT_GOAL := help

.PHONY: help
help:
	@echo "List of available make commands";
	@echo "";
	@grep -hE '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}';
	@echo "";

# ci
.PHONY: ci
ci: build_all analyze_all format

# analyze
.PHONY: analyze_all
analyze_all: ## Analyze all apps with Flutter
	@for dir in pkgs/*/; do \
		if [ -d "$$dir" ]; then \
			echo "Analyzing $$dir..."; \
			cd "$$dir" && fvm dart analyze . && cd ../..; \
		fi \
	done

# format
.PHONY: format
format: ## Format all code
	fvm dart format .
	npx prettier --write "**/*.md"

# run build
.PHONY: build_all
build_all: ## Same functionality as `fvm dart run build_runner build` (made available at root level) Usage: `make build_all`
	@for dir in pkgs/*/; do \
		if [ -d "$$dir" ]; then \
			echo "Building $$dir..."; \
			cd "$$dir" && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..; \
		fi \
	done

# add_freezed: https://pub.dev/packages/freezed#install
.PHONY: add_freezed
add_freezed: ## Add freezed to package: `make add_freezed`
	fvm dart pub add freezed_annotation && \
	fvm dart pub add dev:build_runner && \
	fvm dart pub add dev:freezed && \
	fvm dart pub add json_annotation && \
	fvm dart pub add dev:json_serializable; \

# git branch clean
.PHONY: git_branch_clean
git_branch_clean: ## Delete local branches that don't exist on remote
	chmod u+x sh_scripts/git_branch_clean.sh && \
	./sh_scripts/git_branch_clean.sh

# git_create_tag
.PHONY: git_create_tag
git_create_tag: ## Create a tag: `make git_create_tag <tag_name>`
	if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "\033[0;31mPlease provide a tag name."; \
	else \
		git tag $(filter-out $@,$(MAKECMDGOALS)) && \
		git push origin $(filter-out $@,$(MAKECMDGOALS)); \
	fi

# git_my_tasks
.PHONY: git_my_tasks
git_my_tasks: ## Display my tasks: `make git_my_tasks`
	gh issue ls --assignee @me

.PHONY: pub_publish_dry_run
pub_publish_dry_run: ## Dry run for pub publish: `make pub_publish_dry_run`
	if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "\033[0;31mPlease provide a package name."; \
	else \
		(cd $(filter-out $@,$(MAKECMDGOALS)) && \
		fvm dart pub publish --dry-run); \
	fi

.PHONY: pub_publish
pub_publish: ## Publish to pub.dev: `make pub_publish`
	if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "\033[0;31mPlease provide a package name."; \
	else \
		(cd $(filter-out $@,$(MAKECMDGOALS)) && \
		fvm dart pub publish); \
	fi

.PHONY: add_dependency
add_dependency: ## Add a dependency to the package: `make add_dependency <dependency_name>`
	if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "\033[0;31mPlease provide a dependency name."; \
	else \
		fvm dart pub add $(filter-out $@,$(MAKECMDGOALS)); \
	fi

.PHONY: rename
rename: ## Rename in all files from dart_pkg_group_temp to <new_name>: `make rename <new_name>`
	@if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "\033[0;31mPlease provide a new name."; \
		echo "\033[0;33mUsage: make rename <new_name>"; \
		exit 1; \
	else \
		NEW_NAME=$(filter-out $@,$(MAKECMDGOALS)); \
		echo "\033[0;32mRenaming dart_pkg_group_temp to $$NEW_NAME in all files..."; \
		find . -type f \( -name "*.dart" -o -name "*.yaml" -o -name "*.yml" -o -name "*.md" -o -name "*.json" \) -not -path "./.dart_tool/*" -not -path "./build/*" -not -path "./.git/*" | xargs sed -i '' "s/dart_pkg_group_temp/$$NEW_NAME/g"; \
		echo "\033[0;32mRenaming lib/dart_pkg_group_temp.dart to lib/$$NEW_NAME.dart..."; \
		if [ -f "lib/dart_pkg_group_temp.dart" ]; then \
			mv "lib/dart_pkg_group_temp.dart" "lib/$$NEW_NAME.dart"; \
		fi; \
		echo "\033[0;32mRename completed successfully!"; \
		echo "\033[0;33mModified files:"; \
		git status --porcelain | grep -E "^\s*M" || echo "No files were modified."; \
	fi

.PHONY: melos_generate
melos_generate: ## Generate melos.yaml: `make melos_generate`
	fvm dart run melos bootstrap && \
	fvm dart run melos  list --gviz > gviz.dot \

%:
	@:
