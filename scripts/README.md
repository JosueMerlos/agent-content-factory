# Scripts

Este directorio queda reservado para:

- validación de `skill.yaml`,
- sincronización de adaptadores,
- empaquetado por agente,
- generación de catálogos,
- checks de calidad.

Cuando el repo crezca, conviene agregar aquí:

- `validate-skills`
- `build-agent-packages`
- `sync-adapters`

## Script disponible

### `validate-skills`

Valida que cada skill tenga:

- `README.md`, `skill.yaml`, `examples/README.md`, `tests/README.md`, `assets/README.md`
- adaptadores por agente en `adapters/<agent>/SKILL.md`
- `id`, `domain`, `canonical_version`, `inputs`, `outputs` y `supported_agents`
- versiones semánticas válidas para skill y adaptadores

Uso:

```bash
./scripts/validate-skills
```

### `generate-publication-package`

Genera un paquete final de publicación a partir de handoffs JSON entre skills.

Salida:

- `publication-package.json`
- `publication-package.md`
- `source-handoffs.json`

Uso:

```bash
./scripts/generate-publication-package \
  --input templates/handoffs/youtube-publication-bundle.template.json \
  --output-dir out
```

### `install-agent-content-factory`

Instala la capa orquestadora y sus skills dependientes en Codex, Claude u OpenCode.

Uso:

```bash
./scripts/install-agent-content-factory --agent all --mode copy
```

Windows (PowerShell):

```powershell
.\scripts\install-agent-content-factory.ps1 --agent all --mode copy
```

Desinstalar:

```bash
./scripts/install-agent-content-factory --agent all --action uninstall
```
