# Handoffs and Packages

## Objetivo

Este flujo permite pasar de outputs de skills a artefactos reutilizables del pipeline.

## Convención

Usamos JSON para mantener automatización simple y sin dependencias externas.

### Nivel 1: output individual

Cada skill puede guardar un resumen estructurado a partir de su salida narrativa.

Referencia:

- [templates/handoffs/skill-output.template.json](../templates/handoffs/skill-output.template.json)

### Nivel 2: bundle agregado

Cuando varias skills ya produjeron salidas, se pueden combinar en un bundle para generar activos downstream.

Referencia:

- [templates/handoffs/youtube-publication-bundle.template.json](../templates/handoffs/youtube-publication-bundle.template.json)

## Script disponible

### `generate-publication-package`

Genera un paquete final de publicación a partir de un bundle JSON.

Uso:

```bash
./scripts/generate-publication-package \
  --input templates/handoffs/youtube-publication-bundle.template.json \
  --output-dir out
```

## Artefactos generados

El script crea una carpeta por `video_id` con:

- `publication-package.json`
- `publication-package.md`
- `source-handoffs.json`

## Caso de uso

Esto sirve para:

- consolidar outputs de varias skills,
- revisar antes de publicar,
- compartir un paquete final con otra persona del equipo,
- alimentar futuras automatizaciones del pipeline.

