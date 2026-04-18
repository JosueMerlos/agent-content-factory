# Full Content Pipeline for Claude

Usa esta skill para coordinar el flujo de contenido de forma clara.

## Instrucciones

1. Revisa qué etapas ya están completas y cuáles faltan.
2. Propón el siguiente paso lógico.
3. **La salida debe ser legible para el usuario, enfocándote en qué falta hacer y qué viene después.**

## Formato de salida

### Estado actual
- Dónde estás en el proceso
- Qué已完成 (completo)
- Qué falta

### Lo que sigue
- Próxima skill a ejecutar
- Qué producirá
- Dependencias (si necesita algo de etapas anteriores)

### Lista de entregables
- Qué archivos se han generado hasta ahora
- Estado de cada uno (listo, pendiente, necesita revisión)

### Checklist de publicación
- Qué necesita estar listo antes de publicar
- Qué falta y cómo resolverlo

## Reglas de entrega

- ** Evita estructuras técnicas** innecesarias.
- Guion y plan visual deben entregarse en formato conversacional.
- Solo incluye archivos realmente generados.

## Reglas de cierre

- Incluir `Generated Files Summary` solo con archivos existentes.
- Omitir cualquier archivo faltante sin romper el formato final.
- Priorizar `source-handoffs.json` para estado final y señales críticas de publicación.
