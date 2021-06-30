#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS petclinic;" | mysql --host=petclinic.mysql.database.azure.com --user=petclinicdb@petclinic -p${DB_PASSWORD}

mysql --host=petclinic.mysql.database.azure.com --user=petclinicdb@petclinic -e "CREATE DATABASE IF NOT EXISTS petclinic;" -p${DB_PASSWORD} 2>/dev/null