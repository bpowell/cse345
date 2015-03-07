# CSE345 Final Project

## Requirements
1.  openjdk-7
2.  maven [Apache Maven 3.2.5](http://maven.apache.org/download.cgi)
3.  postgresql 9.4
4.  tomcat 7 [Apache Tomcat 7.0.59](http://tomcat.apache.org/download-70.cgi)

## Setup Maven
Follow the guide on the download link for maven

## Setup PostgreSQL
If you don't want to locally, just use the server. That will be setup for you.

## Setup Tomcat
Follow the guide on the download link for Tomcat

## How to build
In the filters/ directory, make a copy of the dev.properties file named local.properties. Change the path to where you want to store the datasource.properties file. This should be outside the git repo. The contents of the file datasource.properties should be similar to this:

``` ini
pgsql.driver.classname=org.postgresql.Driver
pgsql.driver.url=jdbc:postgresql://localhost/cse345
pgsql.driver.username=your_user
pgsql.driver.password=your_password
```

Make sure to change the username and password for your specific setup if you are doing this on your local machine. If you are using the server, you do not need to worry about it.


To compile the application locally:
```bash
mvn clean package
```

To compile the application on the server:
```bash
compile
```

compile is a script that will compile the application for you.

To deploy the application locally:
```bash
cp target/cse345.war $TOMCAT_HOME/webapps
```

To deploy the application on the server
```bash
deploy
```

deploy is a script that will deploy the application just for you. This way we can all be working on the same machine with out conflicts.


To start tomcat if it is not already started
```bash
tomcatstart
```

To stop tomcat if it is already started
```bash
tomcatstop
```

Please use the tomcat commands to start and stop tomcat if needed. 
