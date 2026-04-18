# Contributing

Gracias por contribuir a Agent Content Factory.

## Flujo recomendado

1. Crea o actualiza una skill en `skills/<dominio>/<skill>/`.
2. Mantén alineados `README.md`, `skill.yaml` y `adapters/`.
3. Agrega o mejora `examples/README.md` y `tests/README.md`.
4. Ejecuta:

```bash
./scripts/validate-skills
```

5. Abre un pull request con contexto claro.

## Qué esperamos en una contribución

- Cambios pequeños y enfocados.
- Versionado correcto en `canonical_version` y `adapter_version`.
- Handoffs claros entre skills del pipeline.
- Documentación suficiente para que otra persona use el cambio.

## Convenciones

- `skills/` es la fuente de verdad.
- Si cambia el contrato funcional, sube `canonical_version`.
- Si cambia solo la adaptación por agente, sube el `adapter_version` del agente correspondiente.
- No dupliques una skill completa para un agente si basta con cambiar el adaptador.

## Antes de abrir PR

Verifica:

- que el validador pase,
- que el README siga siendo coherente con el catálogo actual,
- que la skill tenga ejemplo y pruebas manuales mínimas.

## Licencia

Este repositorio usa [Apache-2.0](LICENSE). Al contribuir, aceptas que tus contribuciones se distribuyan bajo esa licencia.
