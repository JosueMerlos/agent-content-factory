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

## Estructura de la narración (salida amigable)

En lugar de estructuras técnicas, entrega una narración lista para grabar o usar con TTS:

### Cómo debe sonar
- El tono (cercana, energética, calmada, profesional)
- La velocidad (rápido y dinámico, o lento y pausado)
- La emoción general (entusiasmo, seriedad, curiosidad)

### La narración lista
El guion optimizado para escuchar, no para leer. 
- Oraciones cortas, fáciles de decir
- Las pausas marcadas con "..." o línea nueva
- Palabras resaltadas con mayúsculas cuando corresponda

### Notas para grabar
- Dónde poner énfasis (palabras clave)
- Dónde hacer pausas (momentos de impacto)
- Qué evitar (pronunciaciones difíciles, frases muy largas)

### Configuración para TTS (si usas voz sintética)
- Velocidad sugerida
- Qué tipo de voz (masculina/femenina, joven/madura)

---

### Formato técnico (para integración interna)

Si necesitas mantener estructura para otras skills, incluye al final:

```
## metadata_interna:
  - voice_style: ...
  - energy_level: ...
  - duration_estimate: ...
  - language: ...
```

## Reglas

- No dejes frases excesivamente largas sin respiración.
- Si el texto suena escrito y no hablado, reescríbelo.
- Mantén el significado del guion original.
- Si el contenido es educativo, prioriza claridad antes que dramatismo.

## Handoff

La salida debe poder pasar después a `text-to-video`, por lo que conviene preservar bloques semánticos y momentos de énfasis.
