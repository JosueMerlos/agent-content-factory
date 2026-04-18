# Text to Video

Transforma un guion o narración en un plan visual claro para producir un video largo, short o pieza vertical.

## Objetivo

Esta skill debe convertir palabras en decisiones visuales:

1. Qué se ve en cada momento.
2. Qué texto aparece en pantalla.
3. Qué B-roll o recursos apoyan la idea.
4. Cómo mantener ritmo y claridad visual.

## Inputs

- `narration_or_script`: guion o narración final.
- `visual_style`: estilo visual deseado.
- `duration`: duración objetivo.
- `output_format`: `horizontal`, `vertical` o `square`.
- `platform` opcional: `youtube`, `youtube-shorts` o `tiktok`.
- `constraints` opcional: branding, presupuesto, stock, avatar, footage propio, etc.

## Proceso esperado

1. Dividir la pieza en escenas o beats visuales.
2. Asignar un objetivo visual a cada bloque.
3. Proponer B-roll, motion, captions o recursos de apoyo.
4. Mantener consistencia con ritmo, formato y plataforma.
5. Dejar notas claras para edición o herramientas text-to-video.

## Estructura del plan visual (salida amigable)

En lugar de una tabla técnica, entrega el plan en formato narrativo que el usuario pueda entender y usar directamente:

### 🎬 Lo que vas a ver

Describe el estilo visual general:
- Qué tono tiene el video
- Cómo se siente visualmente
- Qué tipo de transiciones usa

### 📺 Escenas (en orden)

Para cada momento clave del video, describe:
- **Qué pasa** en términos simples
- **Qué se ve** en pantalla (footage, texto, gráficos)
- **Cuánto dura** aproximadamente
- **Cómo cambia** de una escena a la siguiente

### 🎨 Lo que necesitas conseguir

- Lista de footage que necesitas buscar
- Música o efectos de sonido
- Gráficos o textos que aparecerán
- Cualquier recurso especial

### ✂️ Notas de edición

Puntos importantes para la edición:
- Dónde hacer énfasis
- Transiciones clave
- Momentos que necesitan atención especial

---

### Formato técnico (para integración interna)

Si necesitas mantener estructura para pasando a otras skills, incluye al final:

```
## metadata_interna:
  - duration_estimate: ...
  - cuts_count: ...
  - format: ...
  - platform: ...
```

## Reglas

- Cada escena debe apoyar una sola idea principal.
- No abuses de texto en pantalla si la narración ya explica bien.
- Si el formato es vertical, prioriza planos legibles en móvil.
- Si la producción es simple, usa recursos visuales realistas.

## Handoff

La salida debe servir tanto para un editor humano como para una herramienta de generación de video.
