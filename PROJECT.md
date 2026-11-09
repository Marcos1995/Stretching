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
- Fichas: abrir `index.html?ficha=fuerza` o `?ficha=estira` en Chrome headless (`--window-size=540,1500 --force-device-scale-factor=2 --screenshot`) y recortar el blanco de abajo.

## Notas para el agente
- Los ejercicios viven en el array `RUTINAS` de `index.html`; el nombre de la imagen es el id.
- Si cambia un ejercicio o una dosis, regenera las dos fichas PNG.
- Ilustraciones en `img/` (800×600, fondo blanco, mismo personaje).
- Lean kit (ver AGENTS.md)
