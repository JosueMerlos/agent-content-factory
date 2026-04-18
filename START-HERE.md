# Start Here

Esta guía está pensada para una persona que quiere pedir contenido con lenguaje natural sin pensar en la arquitectura del repo.

## Qué hacer

Pídele al agente algo como:

- `Ayúdame a planear y crear un video corto para YouTube sobre errores financieros invisibles`
- `Quiero un TikTok sobre cómo ahorrar aunque gano poco`
- `Hazme un Reel de Instagram sobre 3 errores que cometen los emprendedores al vender`

## Qué hace el sistema por detrás

La skill `content-orchestrator` intenta:

1. detectar plataforma y formato,
2. elegir un preset,
3. decidir qué skills conviene ejecutar,
4. pedir solo la mínima información faltante,
5. devolverte un paquete claro y útil.

## Qué deberías recibir

Según el caso, el resultado puede incluir:

- ángulo del contenido,
- hook principal,
- guion,
- estructura visual,
- idea de thumbnail,
- caption o título,
- revisión de copyright,
- paquete final de publicación.

## Presets disponibles

- `youtube-short`
- `youtube-longform`
- `tiktok-short`
- `instagram-reel`

## Consejo práctico

No hace falta describir todo perfecto desde el inicio. Si falta algo importante, el orquestador debería inferir defaults razonables o pedir solo una aclaración corta.

## Dónde mirar si quieres más detalle

- [skills/content/content-orchestrator/README.md](skills/content/content-orchestrator/README.md)
- [templates/presets/youtube-short.md](templates/presets/youtube-short.md)
- [templates/presets/tiktok-short.md](templates/presets/tiktok-short.md)

