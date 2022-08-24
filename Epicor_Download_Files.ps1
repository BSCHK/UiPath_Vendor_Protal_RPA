
Param(
[Parameter(Mandatory=$true)] [string]$QueryUrl,
[Parameter(Mandatory=$true)] [string]$User,
[Parameter(Mandatory=$true)] [string]$Password,
[Parameter(Mandatory=$true)] [string]$OutputFolderPath
   )


<#
$QueryUrl = "https://bscep07/E101live/api/v1/BaqSvc/e2_purchaseorder_rpa(EPIC02)";
$User = "apiuser";
$Password = "apiuser020707";
$OutputFolderPath = "C:\Users\weichan\Desktop\Vendor_Protal_RPA_Output";
#>

Import-Module ".\DLLs\Epicor_Download_Files\Vendor_Protal_RPA_Epicor_Download_Files.dll";
$Result=[Vendor_Protal_RPA_Epicor_Download_Files.Entrance]::Process($QueryUrl, $User, $Password, $OutputFolderPath);
return $Result

