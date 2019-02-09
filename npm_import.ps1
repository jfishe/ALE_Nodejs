
<#PSScriptInfo

.VERSION 1.0

.GUID 7469c46d-355d-4c88-8d40-f29420f2ba90

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

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

 npm

.RELEASENOTES


#>

<#

.DESCRIPTION
 Install npm global packages listed in npm_global_pkgs.bkp

.LINK

https://github.com/jfishe/ALE_Nodejs

#>
Param()

$list = Get-Content npm_global_pkgs.bkp
Write-Output "npm install --global $list"
npm install --global $list
