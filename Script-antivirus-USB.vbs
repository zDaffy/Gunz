on Error Resume Next

Dim objShell, objFileSystem, objTextStream, objRegex
Dim colRegexMatches1, colRegexMatches2
Dim nReturnCode
Dim strIpFileText
Dim element, i

Dim Lista
Lista=array("n1de?ect.com","nide?ect.com","nlde?ect.com","j*.bat","m*.com","d*.com","copy.exe","host.exe",_
	    "a0*.com","ntdeiect.com","ntdelect.com", "u?de*.com","ntde1ect.com", "x*.com", "tio*.*",_
            "80*.com","semo*.exe","autorun*.*","x*.exe","yl*.exe","qd*.cmd")


Set geekside=WScript.CreateObject("WScript.Shell")
Set objShell = WScript.CreateObject("WScript.Shell")
Set objFileSystem = CreateObject("Scripting.FileSystemObject")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set colDrives = objFSO.Drives


Wscript.Echo "Este Software fue desarrollador por la fuente principal de Richmon Cracker Inc. Modificado por Daffy, para la eliminación del software malicioso amvo, avpo, n1detect y variantes."
Wscript.Echo "El proceso de búsqueda y eliminación puede tardar algunos segundos. Sea paciente por favor."


i=0
For Each objDrive in colDrives
	If objDrive.IsReady = True Then
		nret=geekside.Run("cmd /C attrib -s -h -r "&objDrive.DriveLetter&":\autorun.inf",0,TRUE)
		Set objTextStream = objFileSystem.OpenTextFile(objDrive.DriveLetter&":\autorun.inf",1)
		strIpFileText = objTextStream.ReadAll
		objTextStream.Close
	End If
Next


Set objRegex = new RegExp

objRegex.Pattern = "=\w+(.com|.bat|.exe|.pif|.scr|.svd|.dat|.tmp|.cmd)"
objRegex.Global = True
objRegex.IgnoreCase = True
Set colRegexMatches1 = objRegex.Execute(strIpFileText)



i=0
For Each element In colRegexMatches1
	element = Replace(element,"=","")
	WScript.Echo "Procediendo a borrar archivo de virus :" & element
	For Each objDrive in colDrives
		If objDrive.IsReady = True Then
			Wscript.Echo "Limpiar unidad: " & objDrive.DriveLetter

			nret=geekside.Run("cmd /C taskkill /f /im amvo.exe",0,TRUE)
			nret=geekside.Run("cmd /C taskkill /f /im avpo.exe",0,TRUE)
	
			nret=geekside.Run("cmd /C taskkill /f /im semo2x.exe.tmp",0,TRUE)
			nret=geekside.Run("cmd /C taskkill /f /im semo2x.exe",0,TRUE)
			nret=geekside.Run("cmd /C taskkill /f /im help.exe.tmp",0,TRUE)

			nret=geekside.Run("cmd /C attrib -s -h -r " &objDrive.DriveLetter&":\" & element &"",0,TRUE)
			nret=geekside.Run("cmd /C cd \ & del "&objDrive.DriveLetter&":\" & element & "/f /q /a",0,TRUE)
			nret=geekside.Run("cmd /C cd \ & del "&objDrive.DriveLetter&":\autorun.inf",0,TRUE)

		End If
	Next
	i = i + 1
Next
	

Set objRegex= Nothing
Set objTextStream = Nothing
Set objFileSystem = Nothing
Set objShell = Nothing

	nret15=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\amvo*.*",0,TRUE)
	nret16=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\avpo*.*",0,TRUE)
	nret20=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\help.exe.tmp",0,TRUE)
	

	nret56=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\semo*.*",0,TRUE)
	nret60=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\semo*.*.*",0,TRUE)


        nret23=geekside.Run("cmd /C del /f c:\windows\system32\amvo*.*",0,TRUE)
	nret24=geekside.Run("cmd /C del /f c:\windows\system32\avpo*.*",0,TRUE)
	

	nret57=geekside.Run("cmd /C del /f c:\windows\system32\semo*.*",0,TRUE)
	nret59=geekside.Run("cmd /C del /f c:\windows\system32\semo*.*.*",0,TRUE)


	nret31=geekside.Run("cmd /C reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v amva /f",0,TRUE)
	nret32=geekside.Run("cmd /C reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v avpo /f",0,TRUE)

	nret68=geekside.Run("cmd /C reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\ /v avpa /f",0,TRUE)


WScript.Echo "Se procederá a resturar el registro de sistema para poder ver los archivos Ocultos"

	nret33=geekside.Run("cmd /C reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v Hidden /t REG_DWORD /d 1 /f",0,TRUE)
	nret43=geekside.Run("cmd /C reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v SuperHidden /t REG_DWORD /d 1 /f",0,TRUE)
	nret44=geekside.Run("cmd /C reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v ShowSuperHidden /t REG_DWORD /d 1 /f",0,TRUE)


	nret45=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v Hidden /t REG_DWORD /d 1 /f",0,TRUE)
	nret46=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v SuperHidden /t REG_DWORD /d 1 /f",0,TRUE)
	nret47=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v ShowSuperHidden /t REG_DWORD /d 1 /f",0,TRUE)


	nret34=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN\ /v CheckedValue /t REG_DWORD /d 2 /f",0,TRUE)
	nret35=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN\ /v DefaultValue /t REG_DWORD /d 2 /f",0,TRUE)


	nret36=geekside.Run("cmd /C reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\ /v CheckedValue /f",0,TRUE)
	nret37=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\ /v CheckedValue /t REG_DWORD /d 1 /f",0,TRUE)
	nret38=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\ /v DefaultValue /t REG_DWORD /d 2 /f",0,TRUE)


	nret39=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden\ /v CheckedValue /t REG_DWORD /d 0 /f",0,TRUE)
	nret40=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden\ /v DefaultValue /t REG_DWORD /d 0 /f",0,TRUE)

	nret48=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\ /v Type /t REG_SZ /d Group /f",0,TRUE)



	nret61=geekside.Run("cmd /C reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\ /v NoFolderOptions /t REG_DWORD /d 0 /f",0,TRUE)
	nret62=geekside.Run("cmd /C reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\ /v NoFolderOptions /t REG_DWORD /d 0 /f",0,TRUE)
	nret63=geekside.Run("cmd /C reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v DisableRegistryTools /t REG_DWORD /d 0 /f",0,TRUE)


nret78=geekside.Run("cmd /C taskkill /f /im explorer.exe",0,TRUE)
nret79=geekside.Run("cmd /C start explorer.exe",0,TRUE)


	nret15=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\amvo*.*",0,TRUE)
	nret16=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\avpo*.*",0,TRUE)
	nret20=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\help.exe.tmp",0,TRUE)

	

	nret56=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\semo*.*",0,TRUE)
	nret60=geekside.Run("cmd /C attrib -s -h -r c:\windows\system32\semo*.*.*",0,TRUE)


        nret23=geekside.Run("cmd /C del /f c:\windows\system32\amvo*.*",0,TRUE)
	nret24=geekside.Run("cmd /C del /f c:\windows\system32\avpo*.*",0,TRUE)
	

	nret57=geekside.Run("cmd /C del /f c:\windows\system32\semo*.*",0,TRUE)
	nret59=geekside.Run("cmd /C del /f c:\windows\system32\semo*.*.*",0,TRUE)


For Each objDrive in colDrives
	If objDrive.IsReady = True Then
		For X=0 to UBound(Lista)
			nret=geekside.Run("cmd /C attrib -s -h -r "&objDrive.DriveLetter&":\"&Lista(X)&"",0,TRUE)
			nret=geekside.Run("cmd /C cd \ & del "&objDrive.DriveLetter&":\" &Lista(X)& "/f /q /a",0,TRUE)
		Next
	End If
Next

WScript.Echo "Felicidades! Su PC está desinfectada del virus amvo y sus variantes"
WScript.Echo "Gracias por utilizar mi Software, Atentamente : Eduard (Daffy)"


WScript. Quit(0)


