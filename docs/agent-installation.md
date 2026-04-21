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

### Windows: Troubleshooting

#### "No se puede cargar el archivo...ps1 porque la ejecución de scripts está deshabilitada"

PowerShell bloquea scripts por defecto. Ejecuta con bypass temporal:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\install-agent-content-factory.ps1 --agent all --mode copy
```

Esto no modifica la política del sistema, solo ejecuta ese script.

#### "python" abre Microsoft Store

En Windows moderno, `python` puede ser un alias a la Microsoft Store. Instala Python desde [python.org](https://www.python.org/downloads/) o verifica la ruta:

```powershell
# Encuentra el ejecutable real
where python
# Si apunta a la Store, usa la ruta directa, ej:
& "C:\Users\TuUsuario\AppData\Local\Programs\Python\Python313\python.exe" -3 .\scripts\install-agent-content-factory --agent all --mode copy
```

#### Python no está en PATH

Instala Python 3 y durante la instalación marca la opción **"Add Python to PATH"**. Si ya tienes Python instalado, verificalo:

```powershell
py --version
python --version
python3 --version
```

Si ninguno responde, reinicia la terminal después de instalar Python.

#### Las skills no aparecen después de instalar

El agente puede necesitar detectar las nuevas skills. Cierra y abre el agente de nuevo, o en Código/OpenCode, abre una sesión nueva.

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

## Instalación remota (Windows)

Si no tienes el repo clonado o prefieres una instalación directa desde GitHub:

```powershell
.\scripts\install-agent-content-factory-remote.cmd --agent all --mode copy
```

Este script:
1. Verifica conexión a GitHub.
2. Descarga el repo como ZIP.
3. Extrae el contenido a una carpeta temporal.
4. Ejecuta el instalador `.ps1` con `ExecutionPolicy Bypass`.
5. Propaga el exit code del instalador.
6. Limpia los archivos temporales.

**Argumentos disponibles:**

```powershell
--agent   all, codex, claude, opencode    # default: all
--mode    copy, link                     # default: copy
--help    Muestra usage y ejemplos
```

**Ejemplos:**

```powershell
.\scripts\install-agent-content-factory-remote.cmd --agent all --mode copy
.\scripts\install-agent-content-factory-remote.cmd --agent codex
.\scripts\install-agent-content-factory-remote.cmd --help
```

**Errores comunes:**

- `[ERROR] No se pudo conectar a GitHub` → verifica conexión a internet o usa el instalador local.
- `[ERROR] El instalador fallo` → revisa los mensajes previos y verifica que Python esté instalado.

**Nota:** Necesitas conexión a internet. El owner del repo debe coincidir con `--repo-owner` si Personal Token Authentication está habilitado en tu entorno.

###Linux/macOS

```bash
curl -fsSL https://raw.githubusercontent.com/JosueMerlos/agent-content-factory/main/scripts/install-agent-content-factory | bash
```

Esto funciona si el script Python se hace ejecutable y la detección de Python es automática.

