#! /bin/bash
sleep 30
dotnet /opt/scanner/SonarScanner.MSBuild.dll begin /k:core2 /n:Core2 /v:1.0 /d:sonar.login=admin /d:sonar.password=admin /d:sonar.host.url=http://172.16.238.10:9000
dotnet build
dotnet /opt/scanner/SonarScanner.MSBuild.dll end /d:sonar.login=admin /d:sonar.password=admin 




