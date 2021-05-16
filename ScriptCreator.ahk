coordMode, mouse, window
#include speak\speech.ahk
speak("Script iniciado. Pulse f 1 para abrir las instrucciones en el navegador")

if fileExist("AHK\config.ini")
configRead()
else
configWrite()

verify()
x=0

clickCapture() {
	global xCoord, yCoord, HK, Description, Speak, Clicks
	mouseGetPos, xCoord, yCoord
	sleep 50
	gui, capture:add, text,, Ingrese un atajo de teclado
	gui, capture:add, hotkey, vHK
	gui, capture:add, text,, Seleccione la acción del mouse
	gui, capture:add, comboBox, vClicks, Click izquierdo||Doble click|Click derecho|Mover El mouse
	gui, capture:add, text,, Opcional: Ingrese el texto a verbalizar
	gui, capture:add, edit, vSpeak
	gui, capture:add, text,, Opcional: Ingrese descripción del atajo
	gui, capture:add, edit, vDescription
	gui, capture:add, button, gData, Aceptar
	sleep 250
	gui, capture:show,, Datos del click
	}

Data() {
	global xCoord, yCoord, HK, Description, Speak, Clicks
	file := fileOpen("coordenadas.ahk", "a")
	gui, capture:submit, hide
	if not HK
		{
		msgBox, 0, Error., El campo de atajo de teclado no puede quedar vacío, por favor ingrese un valor
		gui, capture:show,, Datos del click
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
		gui, capture:destroy
		}
	}

scriptCompile() {
	speak("Iniciando compilación del script...")
	Sleep 250
	runWait cmd.exe /c AHK\Compiler\Ahk2Exe.exe /in "Coordenadas.ahk" /out "nuevoScript.exe",, Hide
	Sleep 250
	}

f1::Run AHK\Instrucciones.html

scriptSuspend() {
	static t
	Suspend
	Speak((t:=!t)?"Script en pausa":"Script reactivado")
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

configWrite() {
	iniWrite, ^+c, AHK\config.ini, CapturarCoordenadaActual, hk
	iniWrite, ^+p, AHK\config.ini, CompilarScript, hk
	iniWrite, ^+q, AHK\config.ini, CerrarScript, hk
	iniWrite, ^q, AHK\config.ini, SuspenderScript, hk
	configRead()
	}

configRead() {
	iniRead, cc, AHK\config.ini, CapturarCoordenadaActual, hk
	hotkey, %cc%, clickCapture, on
	iniRead, cp, AHK\config.ini, CompilarScript, hk
	hotkey, %cp%, scriptCompile, on
	iniRead, close, AHK\config.ini, CerrarScript, hk
	hotkey, %close%, scriptClose, on
	iniRead, suspend, AHK\config.ini, SuspenderScript, hk
	hotkey, %suspend%, scriptSuspend, on
	}

hkDelete() {
	gui, modify:destroy
	iniRead, cc, AHK\config.ini, CapturarCoordenadaActual, hk
	hotkey, %cc%, clickCapture, off
	iniRead, cp, AHK\config.ini, CompilarScript, hk
	hotkey, %cp%, scriptCompile, off
	iniRead, close, AHK\config.ini, CerrarScript, hk
	hotkey, %close%, scriptClose, off
	iniRead, suspend, AHK\config.ini, SuspenderScript, hk
	hotkey, %suspend%, scriptSuspend, off
	}
	
	+f1::
	gui, commands:default
	gui, commands:add, listView,, comando|atajo: 
	iniRead, fileConfig, AHK\config.ini
	loop, parse, fileConfig, `n`r
		{
		iniRead, atajo, AHK\config.ini,% a_loopField, hk
		atajo := strReplace(atajo, "^", "control, ")
		atajo := strReplace(atajo, "+", "shift, ")
		atajo := strReplace(atajo, "!", "alt, ")
		lv_add("", a_loopField, atajo)
		}
	gui, commands:add, button, gModify, Modificar los atajos de teclado
	gui, commands:show,, Lista de comandos
	return

modify:
gui, commands:hide
gui, modify:add, text,, Ingresa un atajo para capturar la coordenada actual
gui, modify:add, hotkey, vcaptureHK
gui, modify:add, text,, Ingresa un atajo para compilar el nuevo script
gui, modify:add, hotkey, vcompileHK
gui, modify:add, text,, Ingresa un atajo para suspender el script creator
gui, modify:add, hotkey, vsuspendHK
gui, modify:add, text,, Ingresa un atajo para cerrar el script creator
gui, modify:add, hotkey, vcloseHK
gui, modify:add, button, gSave, Guardar los cambios
gui, modify:add, button, gCancel, Cancelar
gui, modify:show,, Configuración de comandos
return

save:
gui, modify:submit, hide
if !(captureHK and compileHK and suspendHK and closeHK)
{
msgBox, 0, Error, Hay campos sin completar.
gui, modify:show,, Configuración de comandos}
}
else {
hkDelete()
iniWrite, %captureHK%, AHK\config.ini, CapturarCoordenadaActual, hk
iniWrite, %compileHK%, AHK\config.ini, CompilarScript, hk
iniWrite, %suspendHK%, AHK\config.ini, SuspenderScript, hk
iniWrite, %closeHK%, AHK\config.ini, CerrarScript, hk
configRead()
}
return

cancel:
gui, modify:destroy
return