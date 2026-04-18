# Repository Structure

## Objetivo

Esta estructura separa claramente:

- intención de negocio,
- implementación por agente,
- artefactos de soporte,
- automatizaciones del repo.

## Árbol recomendado

```text
agents/
  claude/
    README.md
  codex/
    README.md
  opencode/
    README.md

docs/
  repository-structure.md
  skill-versioning.md

scripts/
  README.md

skills/
  youtube/
    topic-research/
      README.md
      skill.yaml
      adapters/
        claude/SKILL.md
        codex/SKILL.md
        opencode/SKILL.md
      examples/README.md
      tests/README.md
      assets/README.md
    script-writer/
    voiceover-generator/
    text-to-video/
    viral-clips-generator/
    thumbnail-generator/
    full-content-pipeline/

templates/
  briefs/
    content-brief.md
  prompts/
    video-prompt-template.md
  workflows/
    pipeline-checklist.md
```

## Reglas de diseño

### `skills/` es la fuente de verdad

Todo lo que define una capability debe vivir allí primero. Los directorios dentro de `agents/` documentan cómo consumirlas, no reemplazan la definición canónica.

### `adapters/` encapsula diferencias reales entre agentes

Cada agente tiene su propia forma de estructurar instrucciones, contexto y formato de respuesta. Esa diferencia se modela como adaptación, no como skill nueva.

### `templates/` guarda insumos reutilizables

Plantillas de briefs, prompts y workflows no deben mezclarse con la definición de una skill específica salvo que sean exclusivas de esa skill.

### `scripts/` queda reservado para automatización

Build, sync, empaquetado, validaciones o publicación futura deben vivir aquí.

## Convención para nuevas skills

Usa nombres cortos, orientados a capacidad:

- `topic-research`
- `script-writer`
- `thumbnail-generator`

Evita nombres atados a una sola herramienta salvo que sea estrictamente necesario:

- mejor `voiceover-generator`
- peor `elevenlabs-skill`

