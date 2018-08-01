#! /bin/bash
sleep 30
cd ./ClassLib.Test
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=opencover 
cd ..
dotnet /opt/scanner/SonarScanner.MSBuild.dll begin /k:core2 /n:Core2 /v:1.0 /d:sonar.login=admin /d:sonar.password=admin /d:sonar.host.url=http://172.16.238.10:9000 /d:sonar.cs.opencover.reportsPaths=/app/ClassLib.Test/coverage.opencover.xml /d:sonar.coverage.exclusions=**/Program.cs
dotnet build
dotnet /opt/scanner/SonarScanner.MSBuild.dll end /d:sonar.login=admin /d:sonar.password=admin 
