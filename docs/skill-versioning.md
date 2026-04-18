# Skill Versioning

## Principio

Una skill tiene dos planos de cambio:

1. La lógica funcional compartida.
2. La adaptación concreta para cada agente.

Por eso cada skill debe versionarse con dos campos:

- `canonical_version`
- `adapter_version` por agente

## Modelo recomendado

```yaml
canonical_version: 1.2.0
agents:
  claude:
    adapter_version: 1.1.0
  codex:
    adapter_version: 1.0.2
  opencode:
    adapter_version: 1.0.0
```

## Cuándo subir `canonical_version`

Sube la versión canónica cuando cambie cualquiera de estos puntos:

- Inputs requeridos.
- Outputs esperados.
- Objetivo de negocio.
- Flujo interno de decisión.
- Criterios de calidad o aceptación.

### Semántica sugerida

- `MAJOR`: cambio incompatible en contrato o comportamiento.
- `MINOR`: nueva capacidad compatible.
- `PATCH`: corrección compatible de calidad, claridad o consistencia.

## Cuándo subir `adapter_version`

Sube la versión del adaptador cuando cambie algo específico del agente:

- mejor prompt shaping,
- estructura de respuesta,
- formato de instrucciones,
- reglas de contexto,
- compatibilidad con features del agente.

Ejemplo: si `Codex` necesita respuestas más accionables en Markdown pero la skill sigue resolviendo el mismo trabajo, sube solo `codex.adapter_version`.

## Regla operativa

Si cambia el negocio, cambia `canonical_version`.

Si cambia solo la manera de hablar con el agente, cambia `adapter_version`.

Si cambian ambos, suben ambos.

## Compatibilidad

Cada `skill.yaml` debe declarar soporte explícito:

```yaml
supported_agents:
  claude:
    status: supported
    adapter_version: 1.0.0
  codex:
    status: supported
    adapter_version: 1.0.0
  opencode:
    status: experimental
    adapter_version: 0.1.0
```

Estados sugeridos:

- `supported`
- `experimental`
- `deprecated`
- `planned`

## Estrategia de release

Usa tags o changelogs con este patrón:

- `topic-research@1.0.0`
- `topic-research/codex@1.0.1`
- `script-writer@2.0.0`

Así puedes rastrear:

- evolución funcional global,
- evolución específica por agente,
- compatibilidad entre variantes.

## Regla de mantenimiento

Nunca copies y pegues una skill completa para un agente salvo que el contrato cambie tanto que ya no sea la misma capability. En casi todos los casos, basta con cambiar el adaptador.

