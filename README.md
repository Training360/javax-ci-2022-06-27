# JAVA CD tanfolyam

```shell
git clone https://github.com/Training360/javax-ci-2022-06-27
set JAVA_HOME=c:\Program Files\Java\jdk-17
set PATH=%JAVA_HOME%\bin;%PATH%
set PATH=C:\java\apache-maven-3.6.3\bin;%PATH%
mvn package
mvn wrapper:wrapper
mvnw package
java -jar target\employees-1.0-SNAPSHOT.jar
```