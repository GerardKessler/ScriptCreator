Speak(Text) {
	process, Exist, jfw.exe
	if ErrorLevel != 0
		{
		Jaws := ComObjCreate("FreedomSci.JawsApi")
		Jaws.SayString(Text)
			}
Else {	
		return DllCall("Speak\nvdaControllerClient" A_PtrSize*8 ".dll\nvdaController_speakText", "wstr", Text)
		}	
}