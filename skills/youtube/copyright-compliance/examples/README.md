# Examples

## Example Input

```yaml
platform: youtube
script_summary: video educativo sobre errores financieros con ejemplos visuales cotidianos
asset_inventory:
  - b-roll propio grabado con smartphone
  - musica de fondo descargada de una libreria gratuita
  - screenshot de app bancaria
  - clip corto de un comercial de terceros
third_party_material:
  - screenshot de app bancaria usada como ejemplo
  - clip de 8 segundos de un comercial conocido
license_context:
  - musica con licencia documentada
  - no hay permiso para el comercial
constraints:
  - canal monetizado
  - contenido educativo
```

## Example Output Summary

### Compliance Snapshot

Contenido educativo con riesgo localizado en materiales de terceros no licenciados.

### Asset Risk Review

- b-roll propio: `low`
- música con licencia documentada: `low`
- screenshot de app bancaria: `medium`
- comercial de terceros sin permiso: `high`

### Policy Flags

- no asumir `fair use` automático por ser educativo
- clip de comercial demasiado reconocible y no esencial

### Decision

`revise`

Acción mínima: quitar el comercial o reemplazarlo por material propio/licenciado.

