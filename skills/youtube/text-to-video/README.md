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

## Output obligatorio

### 1. Visual Strategy

- estilo visual,
- ritmo,
- densidad de cortes,
- uso de texto en pantalla.

### 2. Scene List

Para cada escena:

- `scene_number`
- `time_range`
- `narration_excerpt`
- `visual_direction`
- `b_roll_or_primary_shot`
- `on_screen_text`
- `transition_or_motion_note`

### 3. Asset Suggestions

- stock,
- gráficos,
- screenshots,
- footage propio,
- iconografía o texto.

### 4. Editing Notes

- ritmo,
- transiciones,
- momentos que requieren énfasis.

## Reglas

- Cada escena debe apoyar una sola idea principal.
- No abuses de texto en pantalla si la narración ya explica bien.
- Si el formato es vertical, prioriza planos legibles en móvil.
- Si la producción es simple, usa recursos visuales realistas.

## Handoff

La salida debe servir tanto para un editor humano como para una herramienta de generación de video.
