# Regenera las fichas resumen-<rutina>.png desde index.html (Chrome headless).
Add-Type -AssemblyName System.Drawing
$B = "$env:ProgramFiles\Google\Chrome\Application\chrome.exe"
$T = "$env:TEMP\stretching"; New-Item -ItemType Directory -Force $T | Out-Null
$U = 'file:///' + ($PSScriptRoot -replace '\\', '/') + '/index.html'
foreach ($id in 'cadera', 'fuerza', 'movilidad', 'estira', 'correr') {
  $raw = "$T\raw-$id.png"
  $p = Start-Process $B -ArgumentList "--headless", "--no-sandbox", "--hide-scrollbars", "--window-size=540,1500", "--force-device-scale-factor=2", "--blink-settings=preferredColorScheme=1", "--screenshot=`"$raw`"", "`"$U`?ficha=$id`"" -PassThru -WindowStyle Hidden
  if (-not $p.WaitForExit(25000)) { $p.Kill() }
  $img = New-Object System.Drawing.Bitmap $raw
  # Recorta el blanco sobrante de abajo.
  $y = $img.Height - 1; $blank = $true
  while ($y -gt 0 -and $blank) {
    for ($x = 0; $x -lt $img.Width; $x += 3) { $c = $img.GetPixel($x, $y); if ($c.R -lt 250 -or $c.G -lt 250 -or $c.B -lt 250) { $blank = $false; break } }
    if ($blank) { $y-- }
  }
  $h = [Math]::Min($img.Height, $y + 40)
  $out = $img.Clone((New-Object System.Drawing.Rectangle 0, 0, $img.Width, $h), $img.PixelFormat)
  $out.Save("$PSScriptRoot\resumen-$id.png", [System.Drawing.Imaging.ImageFormat]::Png)
  "$id -> $($img.Width)x$h"
  $img.Dispose(); $out.Dispose()
}
