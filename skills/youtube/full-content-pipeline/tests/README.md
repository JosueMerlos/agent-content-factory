# Tests

## Test 1: El estado del pipeline es realista

La prueba falla si marca como completada una etapa sin output usable.

## Test 2: El siguiente paso está claro

Debe existir una etapa actual o siguiente etapa inequívoca.

## Test 3: Los handoffs son concretos

Cada transición importante debe indicar qué insumo pasa a la siguiente skill.

## Test 4: El checklist final cubre publicación

La salida debe indicar claramente qué falta para publicar o terminar producción.
