# Viral Clips Generator

Extrae y empaqueta momentos de alto potencial para shorts, reels o TikToks a partir de una pieza larga.

## Objetivo

Esta skill debe identificar fragmentos que:

1. Tengan hook fuerte en pocos segundos.
2. Funcionen de manera autónoma.
3. Se adapten a formato vertical.
4. Mantengan claridad incluso fuera del video original.

## Inputs

- `long_video_or_transcript`: video largo, transcripción o guion completo.
- `shorts_goal`: objetivo del clip, por ejemplo awareness, tráfico, engagement o prueba de concepto.
- `platform`: `youtube-shorts`, `tiktok` o `instagram-reels`.
- `subtitle_style`: estilo de subtítulos deseado.
- `constraints` opcional: duración máxima, tono, branding, censura, etc.

## Proceso esperado

1. Detectar momentos con tensión, sorpresa, claridad o emoción.
2. Elegir clips que se entiendan rápido.
3. Reescribir hook o caption cuando ayude a la pieza corta.
4. Añadir notas de corte, texto y subtítulos.
5. Priorizar 3 a 5 clips realmente fuertes.

## Output obligatorio

### 1. Clip Strategy

- objetivo,
- tono,
- duración objetivo,
- criterio de selección.

### 2. Recommended Clips

Para cada clip:

- `clip_number`
- `hook`
- `time_range_or_source_section`
- `why_it_works`
- `editing_angle`
- `recommended_length`

### 3. Captions

- caption principal por clip,
- variante corta opcional.

### 4. Subtitle and Cut Notes

- estilo visual,
- ritmo,
- palabras a resaltar,
- cortes sugeridos.

## Reglas

- No elijas clips que dependan demasiado de contexto previo.
- El hook debe aparecer al principio del clip o reescribirse.
- Si un momento es útil pero largo, indica cómo recortarlo.
- Prioriza claridad por encima de cantidad.

## Handoff

La salida debe quedar lista para edición vertical o para una herramienta de repurposing.
