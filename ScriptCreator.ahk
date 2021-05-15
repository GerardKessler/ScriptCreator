coordMode, mouse, window
#include speak\speech.ahk
speak("Script iniciado. Pulse f 1 para abrir las instrucciones en el navegador")

verify(), x=0
hotkey, #c, clickCapture, on
hotkey, ^+o, scriptCompile, on

clickCapture() {
	global xCoord, yCoord, HK, Description, Speak, Clicks
	mouseGetPos, xCoord, yCoord
	sleep 50
	gui, add, text,, Ingrese un atajo de teclado
	gui, add, hotkey, vHK
	gui, add, text,, Seleccione la acción del mouse
	gui, add, comboBox, vClicks, Click izquierdo||Doble click|Click derecho|Mover El mouse
	gui, add, text,, Opcional: Ingrese el texto a verbalizar
	gui, add, edit, vSpeak
	gui, add, text,, Opcional: Ingrese descripción del atajo
	gui, add, edit, vDescription
	gui, add, button, gData, Aceptar
	sleep 250
	gui, show,, Datos del click
	}

Data() {
	global xCoord, yCoord, HK, Description, Speak, Clicks
	file := fileOpen("coordenadas.ahk", "a")
	gui, submit, hide
	if not HK
		{
		msgBox, 0, Error., El campo de atajo de teclado no puede quedar vacío, por favor ingrese un valor
		gui, show,, Datos del click
		}
	else {
		If Clicks = Click izquierdo
			{
			Text =
(
%HK%::
Click, %xCoord%, %yCoord%    `;%Description%
Sleep 250
Speak("%Speak%")
Return

)
			}
		If Clicks = Doble click
			{
Text =
(
%HK%::
Click, %xCoord%, %yCoord%, 2    `;%Description%
Speak("%Speak%")
Return

)
			}
		If Clicks = Click derecho
			{
Text =
(
%HK%::
Click, %xCoord%, %yCoord%, 0    `;%Description%
Sleep 250
Click, Right
Speak("%Speak%")
Return

)
			}
		If Clicks = Mover el mouse
			{
Text =
(
%HK%::
Click, %xCoord%, %yCoord%, 0    `;%Description%
Speak("%Speak%")
Return

)
			}
		File.Write(Text)
		File.Close()
		Gui, Destroy
		}
	}

scriptCompile() {
	speak("Iniciando compilación del script...")
	Sleep 250
	runWait cmd.exe /c AHK\Compiler\Ahk2Exe.exe /in "Coordenadas.ahk" /out "nuevoScript.exe",, Hide
	Sleep 250
	}

f1::Run AHK\Instrucciones.html

suspendScript() {
	Suspend
	Speak(((Toggle:=!Toggle)?"Script Creator en pausa":"Script Creator activado")")")
	}

scriptClose() {
	Speak("Script CreatorFinalizado")
	Sleep 2000
	ExitApp
	}

FileCreate() {
File := FileOpen("Coordenadas.ahk","a")
Code =
(
#Include Speak\Speech.ahk
Speak("Script iniciado")

+Esc::
speak("Script Finalizado")
sleep 1500
exitApp

;Macros

)
File.Write(Code)
File.Close()
}

verify() {
	If FileExist("Coordenadas.ahk")
		{
		msgBox, 4, Atención:, El archivo Coordenadas.ahk ya existe, deseas reemplazarlo?
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
	}
