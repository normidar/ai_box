## 0.0.3

- Fix: network failures in `getModels()` / `listOpenRouterModels()` /
  `getKeyInfo()` / `validateKey()` are now normalized to
  `LLMNetworkException` instead of leaking raw exceptions.
- Use the OpenAI-compat layer and HTTP error normalization shared via
  `ai_box` (`package:ai_box/openai_compat.dart` /
  `package:ai_box/provider_http.dart`) instead of package-local copies.

## 0.0.2

- Internal cleanups (lint fixes, shared OpenAI-compat note); no behavior changes.

## 0.0.1

- Initial release.
