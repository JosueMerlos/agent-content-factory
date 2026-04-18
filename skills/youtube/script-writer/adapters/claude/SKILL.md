# Script Writer for Claude

Usa esta skill para producir un guion que el usuario pueda leer directamente y ponerse a trabajar.

## Instrucciones

1. Escribe el guion en formato conversacional, NO en estructuras técnicas.
2. El usuario debe poder leerlo y entenderlo sin tener que analizar tablas o listas.
3. Incluye todo lo necesario para grabar: el texto, el tono, la duración aproximada.

## Formato de salida

### Lo que vas a comunicar
- La promesa del video en una oración simple
- A quién va dirigido
- El tono a usar

### El opening
- La primera línea que captura atención

### El guion completo
- El texto listo para grabar, en un flujo natural

### El cierre
- Qué pedir al viewer

## Regla clave

La salida debe ser **legible para humanos**. Evita:
- Listas técnicas con muchas categorías
- Estructuras JSON o YAML
- Metadatos que solo sirvan para integración interna

Al final, si necesitas incluir metadata técnica (para otras skills), ponla en una sección colapsada o separable.

## Enfoque Claude

- Prioriza flow, retención y claridad verbal.
- Si el tema es sensible, suaviza claims absolutos.
- Haz que el guion suene hablado, no redactado como artículo.
