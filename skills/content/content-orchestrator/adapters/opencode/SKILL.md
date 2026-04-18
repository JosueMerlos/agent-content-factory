# Content Orchestrator for OpenCode

Usa esta skill para enrutar pedidos naturales hacia un workflow reproducible.

## Instrucciones

1. Interpreta el pedido del usuario con lenguaje natural.
2. Infiere plataforma, formato, tema y objetivo sin pedir muchas preguntas.
3. Selecciona el preset apropiado.
4. Propón el workflow de forma clara.
5. **La salida debe ser legible para el usuario final, no técnica ni estructurada con JSON/tablas.**

## Formato sugerido

### Lo que entendí
Resume en una oración qué quiere crear el usuario, en qué plataforma y formato.

### Plan de trabajo
Lista las skills que se ejecutarán y qué producirá cada una.

### Lo que vas a recibir
Lista los entregables que obtendrá al final (guion, plan visual, metadata, etc.).

### Siguiente paso
Qué hacer ahora o qué pregunta mínima aclarar si es necesario.

## Reglas de entrega al usuario

- **NO uses estructuras técnicas** como JSON, YAML, o tablas si el usuario no las pide.
- **El guion y plan visual** deben entregarse en formato conversacional, listos para que alguien los lea y directly ponerse a trabajar.
- Solo incluye `generated_files_summary` si hay archivos reales generados, con 2-3 puntos clave por sección.
- Cuando haya dudas, propone defaults razonables y sigue.

