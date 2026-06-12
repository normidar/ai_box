## 0.1.2

- Use the HTTP error normalization shared via `ai_box`
  (`package:ai_box/provider_http.dart`) instead of a package-local copy.
  No behavior changes.

## 0.1.1

- Normalize HTTP errors to typed `LLMException`s in `ClaudeCore` (status codes were previously not checked).
- `validateKey()` now returns `false` for invalid keys instead of throwing.
- `LLMToolChoice.none` is now sent as `tool_choice: {"type": "none"}` instead of being silently dropped.

## 0.1.0

- Update ai_box version and remove seed parameter.

## 0.0.1

- Initial release.
