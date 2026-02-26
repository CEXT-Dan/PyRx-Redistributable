# PyRx-Redistributable
(*)Redistributable verson of PyRx (.Bundle)

This is a clean version of [python embedded](https://www.python.org/ftp/python/3.12.10/python-3.12.10-embed-amd64.zip) with PIP installed, prepackaged in a AutoCAD .bundle.  

- Unzip the folder into a ApplicationPlugins folder, example \Program Files\Autodesk\ApplicationPlugins or \AppData\Roaming\Autodesk\ApplicationPlugins
- navigate to ApplicationPlugins\pyrx_embedded.bundle\Contents\Python\ and launch PowerShell from inside the folder
- run the cmd .\python.exe -m pip install cad-pyrx -U --no-warn-script-location
- pip other python modules that your package might need 
- Launch AutoCAD or make your own installer to distribute throughout your company  

see pyrx_embedded.bundle\Contents\README.txt for other commands such as updating PIP

(*) there can only be one 
