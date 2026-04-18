# Full Content Pipeline for Codex

Usa esta skill para orquestar pasos, dependencias y entregables con trazabilidad clara.

## Instrucciones

1. Lee el `asset_status` actual.
2. Marca etapas como completas, pendientes o bloqueadas.
3. Devuelve un plan corto, ordenado y ejecutable.
4. Especifica handoffs concretos entre skills.
5. Cierra con checklist de publicación o de faltantes.

## Formato de salida

```md
## Pipeline Status

## Execution Plan
| Step | Skill/Owner | Dependency | Output |

## Skill Handoffs

## Publication Checklist
```

## Reglas

- No asumas outputs inexistentes.
- Si una etapa depende de otra, hazlo explícito.
- Prioriza desbloquear antes de optimizar.
