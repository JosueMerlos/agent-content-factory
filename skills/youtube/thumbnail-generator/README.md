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

## Estructura de la miniatura (salida amigable)

En lugar de estructuras técnicas, entrega conceptos que el usuario pueda entender y ejecutar:

### Lo que quieres lograr
- Qué mensaje debe comunicar la miniatura
- Qué emoción debe generar (sorpresa, curiosidad, urgencia)
- Cómo se relaciona con el título del video

### Conceptos (2-4 opciones)

Para cada concepto, describe en una oración qué se ve:
- "Una cara con expresión de shock + el número 5 en rojo"
- "El logo del juego más grande con fondo oscuro"
- "Dos personajes de los juegos mencionados, uno señalando al otro"

Incluye:
- El copy corto que va en la imagen (si aplica)
- Los colores predominantes
- Por qué este concepto podría generar clic

### La opción recomendada
-Cuál elegirías y por qué
- Un posible riesgo (qué podría fallar)

### Ideas para probar
- Una variante A/B si tienes tiempo

---

### Formato técnico (para integración interna)

Si necesitas mantener estructura para otras skills, incluye al final:

```
## metadata_interna:
  - promise: ...
  - emotion: ...
  - variants_count: ...
```

## Reglas

- Evita miniaturas recargadas.
- Si usas texto, debe ser mínimo y legible.
- No propongas conceptos genéricos que podrían servir para cualquier video.
- La miniatura debe complementar el título, no repetirlo exactamente.
