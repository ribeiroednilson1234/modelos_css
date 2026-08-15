#!/bin/bash.sh
[Like_DB.sqL]
$DB = instancia;
name.Site_Gostar('$DB,["Like_DB.sql"]']); in 
    "io.confluent.connect": "config" {
    Confluent: Project: Generate New Project $DB,
    "name" : "OracleDatabaseSource_0",
    "connector.class": "OracleDatabaseSource",
    "kafka.auth.mode": "KAFKA_API_KEY",
    "kafka.api.key": "<my-kafka-api-key>",
    "kafka.api.secret" : "<my-kafka-api-secret>",
    "topic.prefix" : "oracle_",
    "connection.host" : "<my-database-endpoint>",
    "connection.port" : "1521",
    "connection.user" : "<SYSDBA>",
    "connection.password": "<SYS_password>",
    "db.name": "db078_pdb1.subnet.vcn.oraclevcn.com",
    "table.include.list": ".*PASSENGERS.*",
    "timestamp.columns.mapping": ".*PASSENGERS.*:[created_at]",
    "output.data.format": "JSON",
    "db.timezone": "UTC",
    "tasks.max" : "1",
    "config" : "mysql -h 127.0.0.1 -P 3306 user -p'5eHPHoFhkU6l4Jzg' --ssl-mode=VERIFY_CA --protocol=socket -S /var/run/mysqld/mysqld.sock  Like_DB.sql",
    "config" : "kubeconfig= kubectl config get-contexts",
    "config" : "kubeconfig= kubectl config view"