# Node.js Packages for `w0rp/ALE`

The [Asynchronous Lint Engine](https://github.com/w0rp/ale) supports various
linting (ALELint) and formatting (ALEFix) tools. Many of these are Node.js
packages. Install Node.js using one of the methods below.

- [Node.js](https://nodejs.org/)
- The Chocolatey package is `nodejs`.
- The Anaconda package is `nodejs`. This is the easiest option and keeps the
  global configuration within the Anaconda installation path.

```{contenteditable="true" spellcheck="false" caption="powershell" .powershell}
npm install --global nodejs/package.json
npm outdated --global # list outdated packages
npm update --global # update all
```

## Install Global Node.js Packages

Open a bash shell.

``` {contenteditable="true" spellcheck="false" caption="bash" .bash}
./npm_import.sh
```

Open a PowerShell prompt on Windows 10.

``` {contenteditable="true" spellcheck="false" caption="powershell" .powershell}
.\npm_import.ps1
```

## Backup Global Node.js Packages

After installing new Node.js packages, save the list of global packages using
Bash or PowerShell.

Open a bash shell.

``` {contenteditable="true" spellcheck="false" caption="bash" .bash}
./npm_export.sh
```

Open a PowerShell prompt on Windows 10.

``` {contenteditable="true" spellcheck="false" caption="powershell" .powershell}
.\npm_export.ps1
```

## Third Party Notices

[Export import npm global packages](https://stackoverflow.com/questions/32628351/export-import-npm-global-packages)
from Stack Overflow is licensed under
[CC-BY-SA](https://stackoverflow.com/legal/terms-of-service/public) for
non-commercial use. The CC-BY-SA Creative Commons license terms are explained
in further detail by
[Creative Commons](https://creativecommons.org/licenses/by-sa/4.0/).

[medifle](https://stackoverflow.com/users/4908864/medifle) proposed the bash
scripts in `npm_export.sh` and `npm_import.sh`. They have been altered based on
the recommendations of [sepehr](https://stackoverflow.com/users/65732/sepehr)
and further simplified. Similar PowerShell scripts have been developed.
