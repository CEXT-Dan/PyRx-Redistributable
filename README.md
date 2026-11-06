# PyRx-Redistributable

📦 Installation Notes

This extension is distributed as a single, self-contained standalone Windows Installer (.msi).

System Requirements & Prerequisites

• Operating System: Windows 10 or Windows 11 (64-bit).
• Permissions: No Administrator rights required. The installer runs cleanly in user space and deploys straight to your local user profile (%AppData%\Autodesk\ApplicationPlugins).
• Network: An active Internet connection is required during installation. The installer packages a clean, lightweight Python environment framework and automatically runs pip behind the scenes to fetch the latest cad-pyrx core layers and heavy dependencies live from PyPI.

Clean Uninstallation

If you decide to remove the extension via Windows Settings > Installed Apps, an automated background cleanup script will trigger to recursively shred the entire .bundle tree. This completely purges all dynamic runtime configurations, cached .pyc trees, and site-packages layouts, leaving your system completely untracked and clean.

You can also build the installers yourself 

```
pyrx_embedded_314/
├─ build/                              ← one folder, all build tooling
│   ├─ main_acad.wxs
│   ├─ main_bcad.wxs
│   ├─ build_acad_installer.ps1
│   └─ build_bcad_installer.ps1
└─ resources/                          ← the actual package content
    ├─ acad/PackageContents.xml        ← AutoCAD-specific
    ├─ bcad/PackageContents.xml        ← BricsCAD-specific
    └─ common/Contents/                ← shared by both
        ├─ README.txt
        └─ Python/                     ← single copy
```


(*) there can only be one 
