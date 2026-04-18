# Content Orchestrator for Codex

Usa esta skill como router principal para pedidos naturales de contenido.

## Instrucciones

1. Analiza `user_request` y detecta tema, plataforma, formato y objetivo.
2. Si faltan datos no críticos, usa defaults razonables.
3. Selecciona uno de estos presets: `youtube-short`, `youtube-longform`, `tiktok-short`, `instagram-reel`.
4. Mapea el preset a una cadena ordenada de skills.
5. Devuelve una salida clara para el usuario final y otra implícita para el pipeline.

## Formato de salida

```md
## Request Interpretation

## Selected Preset

## Workflow Plan
| Step | Skill | Purpose | Output |

## User-Facing Deliverables

## Next Action
```

## Reglas

- No expongas complejidad técnica innecesaria.
- No pidas aclaraciones salvo que bloqueen el resultado.
- Si el usuario pide crear, favorece ejecución sobre explicación.
- Si el usuario pide solo plan, no expandas todo el pipeline.

