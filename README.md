# Agent Content Factory

Repositorio base para construir un ecosistema de skills orientado a creación de contenido con IA para YouTube, TikTok y formatos derivados.

La idea central es simple:

1. Definir una skill canónica por capacidad de negocio.
2. Adaptarla por agente (`Claude`, `Codex`, `OpenCode`) sin duplicar la intención.
3. Mantener ejemplos, assets y pruebas cerca de cada skill.

## Qué resuelve este repo

- Investigación de temas virales y SEO.
- Escritura de guiones con hooks y estructura de retención.
- Generación de voz AI.
- Conversión de texto a video.
- Generación de clips virales para shorts.
- Producción de miniaturas.
- Validación de copyright y uso de material de terceros.
- Empaquetado final SEO y publicación para YouTube.
- Orquestación del pipeline completo.
- Entrada natural con una skill orquestadora multiplataforma.

## Estado del repo

El repositorio ya está preparado para compartirse en GitHub con:

- estructura de skills consistente,
- validador local en `./scripts/validate-skills`,
- workflow de GitHub Actions para validar el catálogo,
- scripts base para consolidar handoffs entre skills,
- presets iniciales por plataforma y formato,
- instalación one-time setup para agentes compatibles,
- plantillas básicas de issues y pull requests.

El repositorio usa licencia `Apache-2.0`. La checklist de publicación está en [docs/github-release-checklist.md](docs/github-release-checklist.md).

## Estructura principal

```text
agents/                  Configuración y notas por agente
docs/                    Documentación de arquitectura y versionado
scripts/                 Automatizaciones del repositorio
skills/                  Fuente de verdad de las skills
templates/               Plantillas reutilizables
```

La estructura detallada está en [docs/repository-structure.md](docs/repository-structure.md).

## Cómo está organizado el sistema de skills

Cada skill vive en `skills/<dominio>/<skill>/` y contiene:

- `skill.yaml`: contrato canónico y metadata de versionado.
- `README.md`: propósito, inputs, outputs y uso esperado.
- `adapters/<agente>/SKILL.md`: adaptación operativa para cada agente.
- `examples/`: casos de uso y muestras.
- `tests/`: criterios y fixtures de validación.
- `assets/`: recursos de apoyo.

Ejemplo:

```text
skills/youtube/script-writer/
  README.md
  skill.yaml
  adapters/
    claude/SKILL.md
    codex/SKILL.md
    opencode/SKILL.md
  examples/
  tests/
  assets/
```

## Cómo versionar

Este repo usa dos niveles de versión:

- `canonical_version`: versión funcional de la skill.
- `adapter_version`: versión de implementación para cada agente.

La política completa está en [docs/skill-versioning.md](docs/skill-versioning.md).

## Desarrollo local

Validar el catálogo:

```bash
./scripts/validate-skills
```

Generar un paquete de publicación desde handoffs:

```bash
./scripts/generate-publication-package \
  --input templates/handoffs/youtube-publication-bundle.template.json \
  --output-dir out
```

Instalar la capa orquestadora en agentes:

```bash
./scripts/install-agent-content-factory --agent all --mode copy
```

Guía de colaboración:

[CONTRIBUTING.md](CONTRIBUTING.md)

Documentación de handoffs:

[docs/handoffs-and-packages.md](docs/handoffs-and-packages.md)

Guía de arranque para usuario final:

[START-HERE.md](START-HERE.md)

Instalación en agentes:

[docs/agent-installation.md](docs/agent-installation.md)

## Cómo usar este ecosistema

### Si quieres crear nuevas skills

1. Duplica la estructura de una skill existente.
2. Define el contrato en `skill.yaml`.
3. Escribe el comportamiento neutral en `README.md`.
4. Ajusta los adaptadores de `Claude`, `Codex` y `OpenCode`.
5. Agrega un ejemplo y una prueba mínima.

### Si quieres usar solo un agente

- `Claude`: revisa [agents/claude/README.md](agents/claude/README.md)
- `Codex`: revisa [agents/codex/README.md](agents/codex/README.md)
- `OpenCode`: revisa [agents/opencode/README.md](agents/opencode/README.md)

### Si quieres operar todo el pipeline

Empieza por:

1. Crear un brief en `templates/briefs/content-brief.md`.
2. Ejecutar `topic-research`.
3. Pasar la salida a `script-writer`.
4. Continuar con `voiceover-generator`, `text-to-video`, `viral-clips-generator` y `thumbnail-generator`.
5. Ejecutar `copyright-compliance` antes de publicar.
6. Preparar el paquete final con `seo-and-publishing`.
7. Usar `full-content-pipeline` para automatizar el flujo completo.

## Catálogo inicial

- `skills/content/content-orchestrator`
- `skills/youtube/topic-research`
- `skills/youtube/script-writer`
- `skills/youtube/voiceover-generator`
- `skills/youtube/text-to-video`
- `skills/youtube/viral-clips-generator`
- `skills/youtube/thumbnail-generator`
- `skills/youtube/copyright-compliance`
- `skills/youtube/seo-and-publishing`
- `skills/youtube/full-content-pipeline`

## Recomendaciones para colaboradores

- No edites primero los adaptadores si cambió el comportamiento del negocio: actualiza antes `canonical_version`.
- Mantén alineados inputs/outputs entre agentes.
- Documenta diferencias reales de capacidad por agente en el adapter correspondiente.
- Usa `examples/` para enseñar uso real, no solo texto placeholder.
- Usa `tests/` para validar calidad de salida, no solo presencia de archivos.
