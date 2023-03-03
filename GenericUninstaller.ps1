$uninstallerName = "DropboxUninstaller.exe"

$uninstallers = Get-ChildItem "C:\Program Files (x86)\", "C:\Program Files\" -Include $uninstallerName -Recurse -ErrorAction SilentlyContinue | Where-Object {$_.Name -ilike $uninstallerName}

if ($uninstallers.Count -gt 0) {
    Write-Output "El archivo $uninstallerName se encontró en las siguientes rutas:"
    $uninstallers.FullName
} else {
    Write-Output "El archivo $uninstallerName no se encontró en ninguna de las rutas especificadas."
}
