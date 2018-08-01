FROM microsoft/dotnet

ENV SCANNER_VERSION=4.3.1.1372
ENV SCANNER_HOME=/opt/scanner

WORKDIR /app

RUN apt-get update 
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y openjdk-8-jre
RUN wget -q https://github.com/SonarSource/sonar-scanner-msbuild/releases/download/$SCANNER_VERSION/sonar-scanner-msbuild-$SCANNER_VERSION-netcoreapp2.0.zip -O /opt/sonar-scanner-msbuild.zip
RUN mkdir -p $SCANNER_HOME
RUN unzip /opt/sonar-scanner-msbuild.zip -d $SCANNER_HOME
RUN rm /opt/sonar-scanner-msbuild.zip
RUN chmod 775 $SCANNER_HOME/ -R

COPY ./ ./
ENTRYPOINT ["./scanner.sh"]
