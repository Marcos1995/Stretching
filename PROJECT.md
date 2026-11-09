<!-- managed-by-telegram-cursor-bot:agent-kit -->
# Contexto del proyecto

## Produccion
- URL: https://github.com/Marcos1995/Stretching
- Vista: https://marcos1995.github.io/Stretching/ (repo público; Chrome)
- Vista local: `index.html`

## Estado
- Web de una página con dos rutinas: fuerza de cadera para la cintilla iliotibial (4 ejercicios) y estiramientos diarios de corredor (6).
- Cada ejercicio se marca al tocarlo; la semana se guarda en `localStorage` (`stretching:v1`).
- `resumen-fuerza.png` y `resumen-estira.png` son las fichas para guardar en el móvil.

## Stack
- HTML, CSS y JS sin dependencias ni build. GitHub Pages desde `main`.

## Comandos utiles
- Dev: `start index.html`
- Fichas: `powershell -File fichas.ps1` (Chrome headless sobre `index.html?ficha=fuerza|estira`, recorta el blanco de abajo).

## Notas para el agente
- Los ejercicios viven en el array `RUTINAS` de `index.html`; el nombre de la imagen es el id.
- Flecha naranja = movimiento: sexto elemento del ejercicio, un path SVG sobre 800×600. Sin flecha = postura mantenida.
- Si cambia un ejercicio, una dosis o una flecha, regenera las dos fichas PNG.
- Ilustraciones en `img/` (800×600, fondo blanco, mismo personaje).
- Lean kit (ver AGENTS.md)
