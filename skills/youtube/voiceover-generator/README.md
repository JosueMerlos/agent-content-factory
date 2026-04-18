# Voiceover Generator

Convierte un guion aprobado en una narración lista para sintetizar con una herramienta de voz AI o grabar manualmente.

## Objetivo

Esta skill debe producir una narración que:

1. Suene natural al leerla en voz alta.
2. Respete el ritmo de la duración objetivo.
3. Marque pausas, énfasis y cambios de energía.
4. Deje parámetros claros para la herramienta de TTS o para el locutor.

## Inputs

- `final_script`: guion final aprobado.
- `language`: idioma de salida.
- `voice_style`: tipo de voz deseada, por ejemplo cercana, premium, energética o calmada.
- `estimated_duration`: duración esperada.
- `platform` opcional: `youtube`, `youtube-shorts` o `tiktok`.
- `constraints` opcional: claims, velocidad, neutralidad regional, tecnicismos, etc.

## Proceso esperado

1. Limpiar el guion para lectura oral.
2. Eliminar frases que funcionen en texto pero no en voz.
3. Añadir pausas y énfasis donde mejoren comprensión o impacto.
4. Ajustar el ritmo a la duración objetivo.
5. Proponer settings prácticos para TTS o grabación.

## Output obligatorio

### 1. Voice Strategy

- estilo buscado,
- energía,
- ritmo,
- intención emocional.

### 2. Narration Script

- guion final optimizado para voz,
- con pausas o respiraciones marcadas cuando aporten claridad.

### 3. Performance Notes

- palabras a enfatizar,
- cambios de tono,
- advertencias de pronunciación si hacen falta.

### 4. Tool Settings

- velocidad sugerida,
- estabilidad o expresividad si aplica,
- notas para clonación o locución manual.

## Reglas

- No dejes frases excesivamente largas sin respiración.
- Si el texto suena escrito y no hablado, reescríbelo.
- Mantén el significado del guion original.
- Si el contenido es educativo, prioriza claridad antes que dramatismo.

## Handoff

La salida debe poder pasar después a `text-to-video`, por lo que conviene preservar bloques semánticos y momentos de énfasis.
