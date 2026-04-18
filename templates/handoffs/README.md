# Handoffs

Estas plantillas definen una convención simple para intercambiar outputs entre skills mediante JSON.

## Enfoque

- Un archivo por skill si quieres persistir outputs individuales.
- Un bundle agregado cuando quieras generar artefactos posteriores del pipeline.

## Archivos incluidos

- `skill-output.template.json`: forma mínima de un output individual.
- `youtube-publication-bundle.template.json`: bundle agregado para crear un paquete de publicación final.

## Recomendación

Si una skill produce salida libre en Markdown, conviene guardar también un resumen estructurado en JSON para automatizaciones como `generate-publication-package`.

