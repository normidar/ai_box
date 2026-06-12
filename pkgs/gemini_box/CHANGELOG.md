## 0.0.3

- Use the HTTP error normalization shared via `ai_box`
  (`package:ai_box/provider_http.dart`) instead of a package-local copy.
  No behavior changes.

## 0.0.2

- Fix the `ai_box` dependency constraint (`^0.0.1` -> `^0.1.0`).
- Normalize HTTP errors to typed `LLMException`s in `GeminiCore` (status codes were previously not checked).
- `validateKey()` now returns `false` for invalid keys instead of throwing.
- `getModels()` tolerates a missing `models` field in the response.

## 0.0.1

- Initial release.
