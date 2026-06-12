## 0.3.0

- Add true SSE streaming support:
  - `package:ai_box/provider_http.dart`: `postSseData()` (streaming POST
    with the same `LLMException` error normalization as `requestJson()`)
    and `decodeSseJson()`.
  - `package:ai_box/openai_compat.dart`: `streamOpenAiCompletions()` /
    `openAiChunksFromEvents()` — incremental text / reasoning deltas and
    cross-chunk tool-call assembly for OpenAI-compatible providers.
- Add `LLMStreamChunk.reasoningDelta` for incremental thinking output.
  The final chunk now carries the complete parts of the response.
- Add `LLMAIBase.chatStream()`, the streaming counterpart of `chat()`.
- Add `http` as a dependency.

## 0.2.0

- Add `package:ai_box/openai_compat.dart`: the OpenAI-compatible request
  builder / response parser shared by chatgpt_box, deepseek_box, grok_box,
  minimax_box and openrouter_box (previously copy-pasted into each package).
- Add `package:ai_box/provider_http.dart`: `requestJson()` helper that
  normalizes HTTP failures into the sealed `LLMException` hierarchy
  (previously duplicated in every provider core).
- Add `api_http` as a dependency for the new helper libraries.

## 0.1.0

- Remove seed from the base class.(Because claude does not support it)

## 0.0.1

- Initial release.
