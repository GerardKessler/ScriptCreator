CoordMode, Mouse, Window
#Include Speak\Speech.ahk
Speak("Script iniciado. Pulse f 1 para abrir las instrucciones en el navegador")
x=0
y=!

Verify:
Sleep 1550
If FileExist("Coordenadas.ahk")
{
MsgBox, 4, Atención;, El archivo Coordenadas.ahk ya existe, deseas reemplazarlo?
IfMsgBox no
Return
IfMsgBox Yes
{
FileDelete Coordenadas.ahk
FileCreate()
}
}
Else {
FileCreate()
}

#c::
MouseGetPos, xCoord, yCoord
Gui, Add, Text,, Ingrese un atajo de teclado
Gui, Add, Hotkey, vhc
Gui, Add, Text,, Seleccione la acción del mouse
Gui, Add, ComboBox, vClicks, Click izquierdo|Doble click|Click derecho|Mover El mouse
Gui, Add, Text,, Opciónal; Ingrese el texto a verbalizar
Gui, Add, Edit, vSpeak
Gui, Add, Text,, Opciónal; Ingrese descripción del atajo
Gui, Add, Edit, vDescription
Gui, Add, Button, gData, Aceptar
Sleep 250
Gui, Show,, Datos del click
Return

Data:
File := FileOpen("Coordenadas.ahk","a")
Gui, Submit, Hide
If Clicks = Click izquierdo
Text = %hc%::`nClick, %xCoord%, %yCoord%    `;%Description%`nSleep 250`nSpeak("%Speak%")`nReturn`n`n
If Clicks = Doble click
Text = %hc%::`nClick, %xCoord%, %yCoord%, 2    `;%Description%`nSpeak("%Speak%")`nReturn`n`n
If Clicks = Click derecho
Text = %hc%::`nClick, %xCoord%, %yCoord%, 0    `;%Description%`nSleep 250`nClick, Right`nSpeak("%Speak%")`nReturn`n`n
If Clicks = Mover el mouse
{
Text = %hc%::`nClick, %xCoord%, %yCoord%, 0    `;%Description%`nSpeak("%Speak%")`nReturn`n`n
}

File.Write(Text)
File.Close
Gui, Destroy
Return

#o::
Sleep 250
Run cmd.exe /c AHK\Compiler\Ahk2Exe.exe /in "Coordenadas.ahk" /out "Coordenadas.exe", Hide
Sleep 250
Return

f1::Run AHK\Instrucciones.html

^q::
Suspend
Speak(((Toggle:=!Toggle)?"Script Creator en pausa":"Script Creator activado")")")
Return

!q::
Speak("Script CreatorFinalizado")
Sleep 1000
ExitApp

FileCreate() {
File := FileOpen("Coordenadas.ahk","a")
Code = #Include Speak\Speech.ahk`nSoundBeep, 440, 50`nSleep 100`nSpeak("Script iniciado")`nReturn`n`n+Esc::`nSoundBeep, 880,50`nSpeak("Script Finalizado")`nSleep 250`nExitApp`n`n;Macros`n`n
File.Write(Code)
File.Close
Return
}
