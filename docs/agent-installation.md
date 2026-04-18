# Agent Installation

## Objetivo

Permitir una instalación one-time setup para que una persona use prompts naturales en Codex, Claude u OpenCode sin montar manualmente cada skill.

## Instalación recomendada

Desde el root del repo:

```bash
./scripts/install-agent-content-factory --agent all --mode copy
```

En Windows (PowerShell), usa el wrapper incluido:

```powershell
.\scripts\install-agent-content-factory.ps1 --agent all --mode copy
```

También puedes invocar Python directamente:

```powershell
py -3 .\scripts\install-agent-content-factory --agent all --mode copy
```

Esto instala paquetes de skills administrados por este repo en:

- `~/.codex/skills`
- `~/.claude/skills`
- `~/.config/opencode/skills`

## Modos

### `--mode copy`

Copia archivos al directorio del agente. Es la opción más segura para una instalación estable.

### `--mode link`

Crea enlaces simbólicos cuando conviene. Es útil durante desarrollo porque refleja cambios del repo más rápido.
En Windows, si no hay permisos para symlink, el instalador hace fallback automático a `copy` y muestra un warning.

## Agentes soportados

```bash
./scripts/install-agent-content-factory --agent codex
./scripts/install-agent-content-factory --agent claude
./scripts/install-agent-content-factory --agent opencode
./scripts/install-agent-content-factory --agent all
```

## Desinstalar

```bash
./scripts/install-agent-content-factory --agent all --action uninstall
```

Solo elimina skills administradas por este instalador.

## Qué instala

- `acf-content-orchestrator`
- `acf-topic-research`
- `acf-script-writer`
- `acf-voiceover-generator`
- `acf-text-to-video`
- `acf-viral-clips-generator`
- `acf-thumbnail-generator`
- `acf-copyright-compliance`
- `acf-seo-and-publishing`

## Flujo esperado para usuario final

Una vez instalado, la persona solo debería abrir el chat de su agente y escribir prompts como:

- `Ayúdame a planear y crear un video corto para YouTube sobre errores financieros invisibles`
- `Quiero un TikTok sobre cómo ahorrar aunque gano poco`
- `Hazme un Reel de Instagram sobre errores al vender por DM`

## Después de instalar

- Si el agente necesita refrescar skills, reinícialo.
- En entornos con skill registry, conviene correr el proceso de actualización de skills si el agente lo soporta.

## Futuro

Cuando el repo esté publicado en GitHub, se puede envolver este instalador en un bootstrap remoto tipo:

```bash
curl -fsSL https://raw.githubusercontent.com/<owner>/<repo>/main/scripts/install-agent-content-factory | bash
```

Eso requiere ajustar el flujo para que el script remoto descargue el repo o un paquete mínimo antes de instalar.

