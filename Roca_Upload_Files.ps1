param
(
[Parameter(Mandatory=$true)][int] $Exist_BMSCL_Files_Flag, 
[Parameter(Mandatory=$true)][int] $Exist_CLL_Files_Flag, 
[Parameter(Mandatory=$true)][String[]] $BMSCL_Files_Array, 
[Parameter(Mandatory=$true)][String[]] $CLL_Files_Array,
[Parameter(Mandatory=$true)] [string]$BMSCL_UserName,
[Parameter(Mandatory=$true)] [string]$BMSCL_Password,
[Parameter(Mandatory=$true)] [string]$CLL_UserName,
[Parameter(Mandatory=$true)] [string]$CLL_Password

)

Import-Module ".\DLLs\Roca_Upload_Files\Vendor_Protal_RPA_Roca_Upload_Files.dll";
#Import-Module "C:\Users\weichan\Documents\Project\GitRepository\C#\Vendor_Protal_RPA_Roca_Upload_Files\Vendor_Protal_RPA_Roca_Upload_Files\bin\Release\Vendor_Protal_RPA_Roca_Upload_Files.dll";


if($Exist_BMSCL_Files_Flag -eq 1)
{
    $BMSCL_Uploader = [Upload.FileUploader]::new($BMSCL_UserName,$BMSCL_Password);
    $script:BMSCL_Upload_Failed_List = $BMSCL_Uploader.Process($BMSCL_Files_Array)
}


if($Exist_CLL_Files_Flag -eq 1)
{
   $CLL_Uploader = [Upload.FileUploader]::new($CLL_UserName,$CLL_Password);
    $script:CLL_Upload_Failed_List = $CLL_Uploader.Process($CLL_Files_Array)
}




if($script:BMSCL_Upload_Failed_List -ne $null)
{
   $script:BMSCL_Upload_Failed_List 
}

if($script:CLL_Upload_Failed_List -ne $null)
{
   $script:CLL_Upload_Failed_List
}

