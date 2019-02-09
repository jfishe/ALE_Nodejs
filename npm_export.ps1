<#PSScriptInfo

.VERSION 1.0

.GUID 36322aa2-eb4b-4deb-bedd-390d23f47e36

.AUTHOR jdfenw@gmail.com

.COMPANYNAME John D. Fisher

.COPYRIGHT Copyright (c) 2019 John D. Fisher

.TAGS

.LICENSEURI

https://github.com/jfishe/ALE_Nodejs/blob/master/LICENSE.md

.PROJECTURI

https://github.com/jfishe/ALE_Nodejs

.ICONURI

.EXTERNALMODULEDEPENDENCIES

Pscx

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

npm
[System.IO.Path]::GetTempFileName()

.RELEASENOTES


#>

<#

.DESCRIPTION
 Export npm global packages to a backup file npm_global_pkgs.bkp

.LINK

https://github.com/jfishe/ALE_Nodejs

#>
Param()

$exportFile = "npm_global_pkgs.bkp"
$tmpFile = [System.IO.Path]::GetTempFileName()

Write-Output "Packages exported to ${exportFile}:"
npm list --global --depth=0 --parseable | Select-Object -Skip 1 |
    ForEach-Object {$_ -replace ".*\\",""} | Tee-Object -FilePath "$tmpFile"

# Use Linux EOL for cross-platform compatibility.
ConvertTo-UnixLineEnding -Path $tmpFile -Destination $exportFile

Remove-Item -Path "$tmpFile"
