# PyRx-Redistributable
(*)Redistributable verson of PyRx (.Bundle)

This is a clean version of [python embedded](https://www.python.org/ftp/python/3.12.10/python-3.12.10-embed-amd64.zip) with PIP installed, prepackaged in a AutoCAD .bundle.  

- Unzip the folder into a ApplicationPlugins folder, example \Program Files\Autodesk\ApplicationPlugins or \AppData\Roaming\Autodesk\ApplicationPlugins
- navigate to ApplicationPlugins\pyrx_embedded.bundle\Contents\Python\ and launch PowerShell from inside the folder
- run the cmd .\python.exe -m pip install cad-pyrx -U --no-warn-script-location
- pip other python modules that your package might need 
- Launch AutoCAD or make your own installer to distribute throughout your company  

see pyrx_embedded.bundle\Contents\README.txt for other commands such as updating PIP

## Or
use the MSI : )


📦 Installation Notes

This extension is distributed as a single, self-contained standalone Windows Installer (.msi).

System Requirements & Prerequisites

• Operating System: Windows 10 or Windows 11 (64-bit).
• Permissions: No Administrator rights required. The installer runs cleanly in user space and deploys straight to your local user profile (%AppData%\Autodesk\ApplicationPlugins).
• Network: An active Internet connection is required during installation. The installer packages a clean, lightweight Python environment framework and automatically runs pip behind the scenes to fetch the latest cad-pyrx core layers and heavy dependencies live from PyPI.

Clean Uninstallation

If you decide to remove the extension via Windows Settings > Installed Apps, an automated background cleanup script will trigger to recursively shred the entire .bundle tree. This completely purges all dynamic runtime configurations, cached .pyc trees, and site-packages layouts, leaving your system completely untracked and clean.

(*) there can only be one 
