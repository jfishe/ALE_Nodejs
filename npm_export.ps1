<#PSScriptInfo

.VERSION 1.0

.GUID 36322aa2-eb4b-4deb-bedd-390d23f47e36

.AUTHOR fishe

.COMPANYNAME 

.COPYRIGHT 

.TAGS 

.LICENSEURI 

.PROJECTURI 

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#>

<# 

.DESCRIPTION 
 export npm global packages to a backup file 

#> 
Param()

Get-Content npm_global_pkgs.bkp |
    ForEach-Object -Process {
        Write-Output "npm i -g $_"
        npm install --global $_
    }
