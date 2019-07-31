
[string]$directory = "D:\Repl\"

[string]$TimeFileName = [DateTime]::Now.AddDays(-1).ToString("yyyyMMdd-hhmmss")
#[string]$TimeFileName = [DateTime]::Now.AddDays(-1).ToString("f")

[string]$FileNameSr = $directory + "file.txt"

[string]$FileNameDf = $directory + "file-"+$TimeFileName+".txt"

Copy-Item $FileNameSr -Destination $FileNameDf

$TimeFileName