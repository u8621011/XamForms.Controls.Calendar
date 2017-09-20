REM msbuild XamForms.Controls.Calendar\XamForms.Controls.Calendar.csproj /t:Build /p:Configuration="Debug"
msbuild XamForms.Controls.Calendar\XamForms.Controls.Calendar.csproj /t:Clean,Build /p:Configuration="Release"

REM msbuild XamForms.Controls.Calendar.Droid\XamForms.Controls.Calendar.Droid.csproj /t:Build /p:Configuration="Debug"
msbuild XamForms.Controls.Calendar.Droid\XamForms.Controls.Calendar.Droid.csproj /t:Clean,Build /p:Configuration="Release"

REM msbuild XamForms.Controls.Calendar.iOS\XamForms.Controls.Calendar.iOS.csproj /t:Build /p:Configuration="Debug"
msbuild XamForms.Controls.Calendar.iOS\XamForms.Controls.Calendar.iOS.csproj /t:Clean,Build /p:Configuration="Release"

del nuget\*.* /S /Q
del \\192.168.1.101\share\RD\packages\xamforms.controls.calendar\*.* /S/Q

nuget pack XamForms.Controls.Calendar.nuspec -Verbosity detailed -OutputDir nuget
nuget add nuget\XamForms.Controls.Calendar.1.1.1.nupkg -source \\192.168.1.101\share\RD\packages