Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class MouseMover {
    [DllImport("user32.dll")]
    public static extern bool SetCursorPos(int X, int Y);
}
"@

while ($true) {
    [MouseMover]::SetCursorPos(500, 500)
    Start-Sleep -Seconds 1
    [MouseMover]::SetCursorPos(505, 505)
    Start-Sleep -Seconds 60
}