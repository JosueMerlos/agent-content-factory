# Thumbnail Generator

Diseña conceptos de miniatura orientados a clic, claridad y consistencia visual con el canal.

## Objetivo

Esta skill debe producir miniaturas que:

1. Se entiendan en segundos.
2. Refuercen la promesa del título.
3. Generen curiosidad o emoción.
4. Sean ejecutables con un diseño realista.

## Inputs

- `video_topic`: tema o promesa principal del video.
- `target_emotion`: emoción objetivo, por ejemplo sorpresa, urgencia, alivio o autoridad.
- `brand_guidelines`: referencias visuales, colores, estilo o restricciones.
- `desired_variants`: cuántas variantes se quieren explorar.
- `title` opcional: título provisional del video.
- `constraints` opcional: tipo de rostro, no usar texto, solo stock, etc.

## Proceso esperado

1. Detectar la promesa visual más fuerte del tema.
2. Proponer 2 a 4 conceptos distintos.
3. Definir copy corto solo si realmente mejora el CTR.
4. Explicar composición, emoción y contraste visual.
5. Sugerir hipótesis de A/B testing.

## Output obligatorio

### 1. Thumbnail Strategy

- promesa visual,
- emoción objetivo,
- relación con el título,
- estilo del canal.

### 2. Concepts

Para cada concepto:

- `concept_name`
- `core_visual`
- `subject_expression_or_focus`
- `short_copy`
- `color_direction`
- `layout_note`
- `why_it_clicks`

### 3. Recommended Variant

- variante elegida,
- razón,
- principal riesgo.

### 4. A/B Test Ideas

- qué cambiar,
- qué hipótesis se valida.

## Reglas

- Evita miniaturas recargadas.
- Si usas texto, debe ser mínimo y legible.
- No propongas conceptos genéricos que podrían servir para cualquier video.
- La miniatura debe complementar el título, no repetirlo exactamente.
