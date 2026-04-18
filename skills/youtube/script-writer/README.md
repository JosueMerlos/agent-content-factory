# Script Writer

Convierte un tema ya validado en un guion con hook, progresión clara y cierre orientado a retención o conversión.

## Objetivo

Esta skill debe producir un guion que:

1. Capture atención rápido.
2. Mantenga tensión o curiosidad.
3. Entregue valor concreto sin relleno.
4. Termine con un CTA coherente con el objetivo del contenido.

## Inputs

- `approved_topic`: tema elegido o handoff desde `topic-research`.
- `audience`: audiencia concreta.
- `target_duration`: duración estimada.
- `brand_tone`: tono de marca o estilo narrativo.
- `call_to_action_goal` opcional: objetivo del CTA.
- `constraints` opcional: restricciones de claims, estilo, complejidad o idioma.

## Proceso esperado

1. Definir promesa principal del video.
2. Escribir un hook que abra una brecha de curiosidad o dolor.
3. Dividir el contenido en secciones que avancen la promesa.
4. Añadir transiciones o micro-hooks para sostener la retención.
5. Cerrar con un CTA alineado al objetivo real del canal.

## Estructura mínima del guion

### 1. Strategy

- promesa principal,
- audiencia,
- objeción principal,
- resultado deseado.

### 2. Hook

- 1 a 3 opciones de hook,
- una versión recomendada.

### 3. Segment Outline

- segmentos con objetivo narrativo,
- idea clave de cada parte,
- tiempo estimado por bloque.

### 4. Full Script

Guion completo listo para narración o grabación.

### 5. CTA

- CTA principal,
- razón por la que encaja,
- variante suave si el contenido es más educativo que comercial.

## Reglas

- El hook debe llegar antes de cualquier contexto largo.
- Cada segmento debe mover la historia o el valor hacia adelante.
- Evita intros genéricas como "hola chicos, bienvenidos a otro video".
- Evita repetir la misma idea con distintas palabras.
- Si faltan detalles, usa supuestos explícitos y sigue.

## Integración con otras skills

La salida debe poder pasar después a:

- `voiceover-generator`
- `text-to-video`
- `thumbnail-generator`

Por eso conviene mantener frases claras, beats definidos y un CTA fácil de aislar.
