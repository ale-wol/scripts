# ----------------------------------------------------------------------
## Script to delete outdated Files
## Description: Script to delete outded Files
## author: Alexander Wolf
# ----------------------------------------------------------------------


#Try to load Config
try {
	. '.\cleanUpConfig.ps1'
}
catch {
	start-transcript ".\LastError.txt"
	write-host "Error loading configuartion File"
	stop-transcript
	exit
}

# Execute Script
start-transcript $log
foreach ($source in $sources)
{
	write-host "----------------------------------------------------------------------------------------"
	write-host "Delete all Files ($fileSuffix) in directory $source that are older than $ageInDays Days"
	write-host "----------------------------------------------------------------------------------------"
	# delete what if, if you really want to delete the file and don't want an dryRun
	get-childitem $source\* -include $fileSuffix -recurse | where {$_.lastwritetime -lt $dateBeforeAge -and -not $_.psicontainer} |% {remove-item $_.fullname -force -verbose -whatif}
}
stop-transcript