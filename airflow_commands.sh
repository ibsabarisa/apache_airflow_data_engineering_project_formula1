#!/usr/bin/env bash

# Initiliase the metastore
airflow db init

# Run the scheduler in background
airflow scheduler &> /dev/null &

# Create user
airflow users create -u <ENTER DESRIED USERNAME> -p <ENTER DESIRED PASSWORD> -r Admin -e <ENTER DESIRED EMAIL> u -f <ENTER DESIRED FIRST NAME> -l <ENTER DESIRED LAST NAME>

# Run the web server in foreground (for docker logs)
exec airflow webserver
