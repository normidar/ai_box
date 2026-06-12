## 0.0.4

- `completionsStream()` now uses real SSE streaming (incremental text
  deltas, cross-chunk tool-call assembly) instead of the single-chunk
  fallback.

## 0.0.3

- Use the OpenAI-compat layer and HTTP error normalization shared via
  `ai_box` (`package:ai_box/openai_compat.dart` /
  `package:ai_box/provider_http.dart`) instead of package-local copies.
  No behavior changes.

## 0.0.2

- Fix the `ai_box` dependency constraint (`^0.0.1` -> `^0.1.0`).
- Normalize HTTP errors to typed `LLMException`s in `GrokCore` (status codes were previously not checked).
- `validateKey()` now returns `false` for invalid keys instead of throwing.
- Sync the OpenAI-compat layer across packages: parse `reasoning` fallback key and generated images (`message.images`) in responses.

## 0.0.1

- Initial release.
