$uninstallerName = "DropboxUninstaller.exe"
$uninstallers = Get-ChildItem "C:\Program Files (x86)\", "C:\Program Files\" -Include $uninstallerName -Recurse -ErrorAction SilentlyContinue

if ($uninstallers.Count -gt 0) {
    Start-Process $uninstallers.FullName /S -Wait
} else {
    exit
}