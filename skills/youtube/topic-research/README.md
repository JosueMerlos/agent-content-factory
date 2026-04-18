# Topic Research

Investiga oportunidades de contenido para YouTube o TikTok y convierte una idea amplia en una lista priorizada de temas accionables.

## Objetivo

Esta skill debe ayudar a responder tres preguntas:

1. Qué temas tienen más potencial de captar atención.
2. Qué ángulo conviene usar para diferenciarse.
3. Qué idea conviene pasar a `script-writer`.

## Inputs

- `niche`: nicho o categoría del canal.
- `audience`: audiencia objetivo con nivel de experiencia.
- `platform`: `youtube`, `youtube-shorts` o `tiktok`.
- `content_goal`: objetivo del contenido, por ejemplo crecer audiencia, vender, educar o validar interés.
- `constraints` opcional: restricciones de tono, tiempo, país, presupuesto o herramientas.

## Proceso esperado

1. Detectar 5 a 10 subtemas relevantes dentro del nicho.
2. Evaluar cada subtema con foco en novedad, claridad, potencial de CTR y facilidad de producción.
3. Agrupar keywords por intención de búsqueda o curiosidad.
4. Proponer ángulos de título, no solo keywords sueltas.
5. Seleccionar 3 ideas prioritarias y recomendar una ganadora.

## Criterios de evaluación

Usa una escala de 1 a 5 para cada idea:

- `demand_signal`: qué tan probable es que genere interés.
- `novelty`: qué tan fresca o diferenciada se siente.
- `production_fit`: qué tan fácil es producirla con los recursos disponibles.
- `conversion_fit`: qué tan alineada está con el objetivo del canal.

## Output obligatorio

La salida final debe incluir estas secciones:

### 1. Research Snapshot

- Resumen corto del nicho, audiencia y objetivo.

### 2. Prioritized Topics

Para cada tema:

- `topic`
- `why_now`
- `audience_pain_or_desire`
- `demand_signal` de 1 a 5
- `novelty` de 1 a 5
- `production_fit` de 1 a 5
- `conversion_fit` de 1 a 5
- `total_score`

### 3. Keyword Clusters

- 3 a 5 clusters de keywords.
- Cada cluster debe incluir keyword principal y keywords relacionadas.

### 4. Title Angles

- 3 a 5 títulos por la idea ganadora.
- Al menos un título debe ser más directo y uno más curiosity-driven.

### 5. Recommendation

- Idea ganadora.
- Razón principal.
- Riesgo principal.
- Brief de handoff para `script-writer`.

## Reglas

- No devolver ideas genéricas como "consejos para crecer" sin un ángulo concreto.
- Priorizar ideas que se puedan explicar en una sola frase.
- Si faltan datos, hacer supuestos explícitos y seguir.
- Si el nicho está saturado, proponer diferenciación en vez de repetir formatos comunes.

## Handoff a `script-writer`

El cierre debe dejar una ficha breve con:

- tema elegido,
- promesa del video,
- audiencia exacta,
- tono sugerido,
- CTA recomendado,
- objeción o duda principal a resolver en el guion.
