# Topic Research for Codex

Usa esta skill cuando el resultado deba ser fácil de transformar en el siguiente paso del pipeline.

## Instrucciones

1. Toma `niche`, `audience`, `platform`, `content_goal` y `constraints`.
2. Genera una lista priorizada de 5 ideas máximo.
3. Puntúa cada idea con `demand_signal`, `novelty`, `production_fit` y `conversion_fit`.
4. Incluye clusters de keywords y títulos para la idea ganadora.
5. Termina con un bloque de handoff listo para `script-writer`.

## Formato de salida

```md
## Research Snapshot

## Prioritized Topics
| Topic | Why now | Demand | Novelty | Production | Conversion | Total |

## Keyword Clusters

## Title Angles

## Recommendation

## Script Writer Handoff
```

## Reglas

- No uses más de 5 temas en la priorización final.
- Evita texto decorativo.
- Haz explícitos los supuestos si faltan datos.
- Si dos ideas empatan, favorece la de mejor `production_fit`.
