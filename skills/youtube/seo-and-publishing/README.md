# SEO and Publishing

Empaqueta un video final para publicación en YouTube con foco en descubrimiento, claridad y preparación operativa.

## Objetivo

Esta skill debe convertir los artefactos del contenido en un paquete listo para publicar.

Debe responder:

1. Qué título conviene usar.
2. Qué descripción y metadata ayudan al descubrimiento.
3. Qué capítulos, CTA y assets acompañan la publicación.
4. Si el video está listo para publicar o aún necesita ajustes.

## Inputs

- `video_summary`: resumen del video final.
- `target_audience`: audiencia concreta.
- `primary_goal`: objetivo principal, por ejemplo views, autoridad, tráfico o leads.
- `thumbnail_direction`: dirección elegida de thumbnail.
- `keyword_focus` opcional: palabras clave o tema SEO principal.
- `publication_context` opcional: canal, idioma, fecha, serie, oferta o campaña.
- `constraints` opcional: tono, claims, links, restricciones de plataforma o compliance.

## Proceso esperado

1. Identificar la promesa principal del video.
2. Producir varias opciones de título con distinto ángulo.
3. Redactar descripción optimizada sin sonar artificial.
4. Proponer capítulos, hashtags y CTA si aplican.
5. Cerrar con checklist y recomendación de publicación.

## Output obligatorio

### 1. Publishing Strategy

- promesa principal,
- objetivo de publicación,
- ángulo SEO/editorial,
- audiencia.

### 2. Title Options

Para cada opción:

- `title`
- `angle`
- `why_it_works`

Debe marcar una opción recomendada.

### 3. Description Package

- descripción larga,
- primera línea recomendada,
- CTA,
- links o placeholders si aplican.

### 4. Metadata Package

- keyword principal,
- keywords secundarias,
- hashtags opcionales,
- categoría o intención del contenido.

### 5. Chapters and Publishing Notes

- capítulos sugeridos cuando aplique,
- comentario fijado opcional,
- notas de publicación o timing.

### 6. Final Decision

- `ready_to_publish` o `needs_revision`
- razón principal
- últimos ajustes si faltan

## Reglas

- El título debe prometer algo claro sin sentirse clickbait vacío.
- La descripción debe ser útil para humanos antes que para keywords.
- No fuerces hashtags o keywords si no mejoran el paquete.
- Si falta un asset crítico como thumbnail o CTA, marca `needs_revision`.

## Handoff

La salida debe poder consumirse como la última etapa después de `copyright-compliance`.
