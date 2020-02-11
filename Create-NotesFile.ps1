#Creates a daily notes file for keeping notes. File is delimited by percentage signs for organization of notes.

$date=(Get-Date -Format "MM-dd-yyyy").ToString()
$fileName=$date+" Notes.txt"

$targetPath="C:\" #Specify the target directory before running it!

$completeFilePath=$targetPath+"\"+$fileName

$fileExists=Test-Path $completeFilePath

if ($fileExists){

"A notes file for today already exists"

if($Host.Name -eq "ConsoleHost"){

$Host.UI.RawUI.ReadKey("NoEcho, IncludeKeyDown") | OUT-NULL
$Host.UI.RawUI.FlushInputbuffer()
}
else{
Read-Host "Press Enter"
}
}

else{
New-Item -name $fileName -ItemType "file" -Path $targetPath

$counter=0

while($counter -ne 500){

Add-Content $targetPath\$fileName "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

$counter++

}
}