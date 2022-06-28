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

```shell
mvnw help:effective-pom
mvnw test
mvnw dependency:tree
mvnw dependency:analyze
mvnw versions:display-dependency-updates
```

```shell
docker build -t employees .
docker run -p 8083:8080 -d --name my-employees employees
```

```shell
docker run -d -e MARIADB_DATABASE=employees -e MARIADB_USER=employees -e MARIADB_PASSWORD=employees  -e MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=yes -p 3306:3306 --name employees-mariadb mariadb

set SPRING_DATASOURCE_URL=jdbc:mariadb://localhost/employees
set SPRING_DATASOURCE_USERNAME=employees
set SPRING_DATASOURCE_USERNAME=employees
```

```shell
docker build -t employees -f Dockerfile.layered .
```

## Alkalmazás és adatbázis futtatása

```shell
docker network create employees-net

docker run -d -e MARIADB_DATABASE=employees -e MARIADB_USER=employees -e MARIADB_PASSWORD=employees  -e MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=yes -p 3307:3306 --name employees-app-mariadb --network employees-net mariadb

docker run -d  -e SPRING_DATASOURCE_URL=jdbc:mariadb://employees-app-mariadb/employees -e SPRING_DATASOURCE_USERNAME=employees -e SPRING_DATASOURCE_PASSWORD=employees -p 8085:8080 --name employees-app --network employees-net employees
```