# Copyright Compliance for Codex

Usa esta skill como control operativo antes de publicar.

## Instrucciones

1. Lee `platform`, `script_summary`, `asset_inventory`, `third_party_material` y `license_context`.
2. Clasifica cada asset con `low`, `medium` o `high`.
3. Indica el estado de propiedad o licencia cuando exista.
4. Propón una acción concreta por riesgo.
5. Emite una decisión final: `publish`, `revise` o `block`.

## Formato de salida

```md
## Compliance Snapshot

## Asset Risk Review
| Asset | Usage | Ownership/license | Risk | Why | Recommended action |

## Policy Flags

## Decision
```

## Reglas

- Si no hay evidencia de licencia o permiso, no asumas seguridad.
- Si hay material de terceros central para la pieza, favorece `revise` o `block`.
- No reemplaces análisis por disclaimers vacíos.

