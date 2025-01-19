#!/usr/bin/bash
mvn clean package
java -jar target/database-benchmark-1.0-SNAPSHOT.jar
echo ""
echo ""
echo "Exito!!!"
