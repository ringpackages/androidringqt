func main
	? "Removing Folder : ring/android/ringqt"
	cDir = CurrentDir()
	chdir(exefolder()+"../android")
	OSDeleteFolder("ringqt")
	chdir(cDir)

func OSDeleteFolder cFolder 
	if isWindows() 
		systemSilent("rd /s /q " + cFolder)
	else
		systemSilent("rm -r " + cFolder)
	ok