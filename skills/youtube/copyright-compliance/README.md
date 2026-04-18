# Copyright Compliance

Evalua riesgos de derechos de autor y de uso de material de terceros antes de publicar contenido en YouTube u otras plataformas.

## Objetivo

Esta skill debe ayudar a decidir si una pieza está lista para publicar desde el punto de vista de copyright y uso permitido de assets.

Debe responder:

1. Qué elementos del contenido tienen riesgo.
2. Qué riesgo es alto, medio o bajo.
3. Qué cambios son obligatorios antes de publicar.
4. Si el contenido puede `publish`, necesita `revise` o debe `block`.

## Inputs

- `platform`: plataforma principal, por ejemplo `youtube`.
- `script_summary`: resumen del contenido o guion final.
- `asset_inventory`: inventario de assets usados o planeados.
- `third_party_material` opcional: clips, imágenes, música, logos, screenshots, fragmentos, etc.
- `license_context` opcional: licencias disponibles, permisos, fuentes o documentación.
- `constraints` opcional: país, monetización, uso educativo, comentario/crítica, duración del clip, etc.

## Qué debe revisar

- música con copyright o licencias ambiguas,
- video o imágenes de terceros sin permiso claro,
- reutilización extensa de clips, trailers, streams o broadcasts,
- logos, interfaces, marcas o screenshots sensibles,
- citas, transcripciones o lectura extensa de contenido ajeno,
- riesgo de confundir `fair use` con permiso automático.

## Proceso esperado

1. Revisar el inventario de assets y el contexto de uso.
2. Identificar material propio, licenciado, permitido o no aclarado.
3. Marcar riesgos por categoría.
4. Recomendar reemplazos o mitigaciones concretas.
5. Emitir una decisión operativa final.

## Output obligatorio

### 1. Compliance Snapshot

- plataforma,
- tipo de contenido,
- conclusión general.

### 2. Asset Risk Review

Para cada asset o categoría:

- `asset_or_material`
- `usage_type`
- `ownership_or_license_status`
- `risk_level`
- `why_it_is_risky`
- `recommended_action`

### 3. Policy Flags

- lista de señales rojas o zonas grises,
- supuestos hechos si faltan datos.

### 4. Decision

- `publish`, `revise` o `block`
- razón principal
- acciones mínimas para avanzar

## Reglas

- No des consejos legales definitivos.
- Si la licencia o permiso no está claro, trata el asset como riesgoso.
- Si el contenido depende fuertemente de material ajeno, no lo marques como `publish`.
- Prefiere mitigaciones concretas como reemplazar, recortar, relicenciar o documentar permiso.

## Handoff

La salida debe servir como gate antes de `seo-and-publishing` o como retroalimentación para `text-to-video`, `viral-clips-generator` y `thumbnail-generator`.
