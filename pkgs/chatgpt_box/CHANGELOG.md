## 0.0.3

- Normalize HTTP errors to typed `LLMException`s in `ModelsCore` / `ChatCompletionsCore` (status codes were previously not checked).
- `validateKey()` now returns `false` for invalid keys instead of throwing.
- Sync the OpenAI-compat layer across packages: parse `reasoning` fallback key and generated images (`message.images`) in responses.

## 0.0.2

- Update the version of the ai_box package.

## 0.0.1

- Initial release.
