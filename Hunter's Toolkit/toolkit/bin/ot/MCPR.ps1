echo ""
echo ""
echo "Downloading McAfee Removal Tool..."
$url = "http://us.mcafee.com/apps/supporttools/mcpr/mcpr.asp"
$output = ".\toolkit\temp\mcpr.exe"
New-Item -Path ".\toolkit" -Name "temp" -ItemType "directory" | Out-Null
$ProgressPreference = "silentlyContinue"
Invoke-WebRequest -Uri $url -OutFile $output
echo "Starting McAfee Removal Tool..."

start .\toolkit\temp\mcpr.exe