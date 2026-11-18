## 0.0.6

- Prompt caching options on `OpenRouter` (all off by default):
  - `promptCaching: true` adds `cache_control` to `anthropic/*` and `qwen/*`
    models (on the last system message and the last message with text,
    including tool results). Other models cache automatically; Gemini gets
    more expensive with explicit markers, so it is left alone.
  - `promptCacheTtl: OpenRouterCacheTtl.oneHour` adds `ttl: "1h"` to the
    `anthropic/*` markers.
  - `sessionId` is sent as `session_id`, so OpenRouter keeps routing the
    requests to the same provider and its cache.
- `applyOpenRouterPromptCache()` applies the same to an OpenAI-style body.

## 0.0.5

- `OpenRouter` now implements `ImageGenerator` (`/images`, `/images/models`) and
  `TextEmbedder` (`/embeddings`, `/embeddings/models`); reported `usage.cost` is
  exposed as `costUsd`.
- Optional `baseUrl` for tests.

## 0.0.4

- `completionsStream()` now uses real SSE streaming (incremental text /
  reasoning deltas, cross-chunk tool-call assembly, usage from the final
  chunk when OpenRouter provides it) instead of the single-chunk fallback.

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
