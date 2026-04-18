# Content Orchestrator

Interpreta prompts naturales de creación de contenido y los convierte en un flujo ordenado de trabajo para YouTube, TikTok o Instagram.

## Objetivo

Esta skill actúa como capa de entrada simple para una persona no técnica.

Debe responder:

1. qué quiere crear la persona,
2. en qué plataforma y formato,
3. qué preset conviene usar,
4. qué skills deben activarse,
5. qué entregables conviene devolver.

## Inputs

- `user_request`: prompt natural del usuario.
- `platform` opcional: si ya viene definida.
- `format` opcional: short, reel, longform, etc.
- `goal` opcional: views, autoridad, leads, ventas, engagement.
- `audience` opcional.
- `brand_tone` opcional.
- `constraints` opcional.

## Plataformas y formatos esperados

- `youtube-short`
- `youtube-longform`
- `tiktok-short`
- `instagram-reel`

## Responsabilidades

### 1. Interpretación

Detectar:

- tema principal,
- plataforma,
- formato,
- intención probable,
- nivel de detalle del pedido.

### 2. Selección de preset

Mapear el pedido a un preset de trabajo.

Si el prompt es ambiguo, usar el mejor supuesto razonable y explicarlo.

### 3. Orquestación

Elegir qué skills conviene usar del catálogo.

Ejemplo:

- `youtube-short`: `topic-research`, `script-writer`, `text-to-video`, `copyright-compliance`, `seo-and-publishing`
- `youtube-longform`: `topic-research`, `script-writer`, `voiceover-generator`, `text-to-video`, `viral-clips-generator`, `thumbnail-generator`, `copyright-compliance`, `seo-and-publishing`
- `tiktok-short`: `topic-research`, `script-writer`, `text-to-video`, `copyright-compliance`
- `instagram-reel`: `topic-research`, `script-writer`, `text-to-video`, `copyright-compliance`

### 4. Gestión de incertidumbre

Pedir aclaraciones solo cuando falte algo crítico.

Debe preferir defaults razonables para:

- duración,
- tono,
- CTA,
- objetivo de publicación.

### 5. Consolidación

Entregar una salida única, clara y útil para la persona final.

## Output obligatorio

### 1. Request Interpretation

- tema,
- plataforma,
- formato,
- objetivo inferido,
- supuestos.

### 2. Selected Preset

- nombre del preset,
- por qué fue elegido.

### 3. Workflow Plan

- skills sugeridas en orden,
- qué produce cada una,
- qué se omite si el pedido es simple.

### 4. User-Facing Deliverables

- lista de entregables que recibirá la persona.

### 5. Next Action

- siguiente paso recomendado,
- o solicitud mínima de aclaración si hace falta.

## Reglas

- No pedir demasiadas aclaraciones.
- No exponer jerga interna innecesaria si no aporta valor.
- Adaptar el flujo al nivel de complejidad del pedido.
- Si el usuario pide "solo planear", no forzar generación completa.
- Si el usuario pide "crear", priorizar una salida usable desde la primera respuesta.

## Presets de referencia

- [templates/presets/youtube-short.md](../../../templates/presets/youtube-short.md)
- [templates/presets/youtube-longform.md](../../../templates/presets/youtube-longform.md)
- [templates/presets/tiktok-short.md](../../../templates/presets/tiktok-short.md)
- [templates/presets/instagram-reel.md](../../../templates/presets/instagram-reel.md)

