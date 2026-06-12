## 0.0.2

- Fix the `ai_box` dependency constraint (`^0.0.1` -> `^0.1.0`).
- Normalize HTTP errors to typed `LLMException`s in `DeepSeekCore` (status codes were previously not checked).
- `validateKey()` now reliably returns `false` for invalid keys.
- Sync the OpenAI-compat layer across packages: parse `reasoning` fallback key and generated images (`message.images`) in responses.

## 0.0.1

- Initial release.
