# Voiceover Generator for Codex

Usa esta skill para dejar la narración lista para ejecución en TTS o grabación.

## Instrucciones

1. Toma el `final_script` como base.
2. Devuelve una versión optimizada para lectura oral.
3. Marca pausas, énfasis y ritmo de forma consistente.
4. Añade settings concretos para la herramienta de voz.
5. Conserva bloques fáciles de reutilizar en `text-to-video`.

## Formato de salida

```md
## Voice Strategy

## Narration Script

## Performance Notes

## Tool Settings

## Text to Video Handoff
```

## Reglas

- Evita párrafos demasiado largos.
- Si la duración se dispara, recorta antes de adornar.
- No alteres la promesa principal del guion.
