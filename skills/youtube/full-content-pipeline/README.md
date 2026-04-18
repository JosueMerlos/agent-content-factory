# Full Content Pipeline

Orquesta todo el flujo de contenido desde el brief inicial hasta una salida lista para publicar o producir.

## Objetivo

Esta skill debe coordinar el sistema completo y responder:

1. Qué etapa toca ejecutar ahora.
2. Qué falta para avanzar.
3. Qué skill debe correr después.
4. Cuándo el contenido está listo para publicación.

## Inputs

- `brief`: resumen del contenido o proyecto.
- `platform`: plataforma principal.
- `goal`: objetivo del contenido o del canal.
- `asset_status`: estado actual de guion, voz, video, clips, thumbnail, copyright y SEO.
- `constraints` opcional: deadlines, presupuesto, equipo, herramientas o idioma.

## Proceso esperado

1. Leer el estado actual del proyecto.
2. Detectar etapas completas, incompletas o bloqueadas.
3. Ordenar las siguientes acciones.
4. Generar handoffs claros entre skills.
5. Cerrar con checklist de publicación o con los bloqueos pendientes.

## Etapas del pipeline

- `topic-research`
- `script-writer`
- `voiceover-generator`
- `text-to-video`
- `viral-clips-generator`
- `thumbnail-generator`
- `copyright-compliance`
- `seo-and-publishing`

## Output obligatorio

### 1. Pipeline Status

- etapa actual,
- etapas completadas,
- etapas pendientes,
- bloqueos.

### 2. Execution Plan

- pasos ordenados,
- responsable o skill sugerida,
- dependencias.

### 3. Skill Handoffs

- qué input debe pasar de una etapa a otra,
- qué artefacto falta.

### 4. Publication Checklist

- elementos listos,
- elementos pendientes,
- criterio de done.

## Reglas

- No marques una etapa como completa si no existe un output usable.
- Si falta información, registra el supuesto.
- Si hay bloqueos, prioriza resolverlos antes de proponer trabajo paralelo ficticio.
- Mantén el plan corto y accionable.
