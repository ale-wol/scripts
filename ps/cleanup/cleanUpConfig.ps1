# ----------------------------------------------------------------------
## Config for File exeCleanUpPS.ps1
## Description: Define Directorys where the Script is executed
## author: Alexander Wolf
# ----------------------------------------------------------------------

$sources = @("C:\path\to\dir1\",
			 "C:\path\to\dir2\")
			 
$ageInDays 		= 30
$fileSuffix 	= "*.log","*.txt"
$dateBeforeAge 	= (Get-Date).AddDays(-$ageInDays)

$logPath = $sources[1]

$log=$logPath+"exeCleanUpPS_"+$(get-date -format yyyyMMddHHmmss)+".txt"