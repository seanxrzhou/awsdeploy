#!/bin/bash -ex

mkdir -p /app/ibm/
cd /tmp
unzip was8.zip -d /app/ibm/
unzip pbw-db.jar -d /app/ibm/was8/derby/databases
rm -f /app/ibm/was8/profiles/AppSrv01/monitoredDeployableApps/servers/server1/*
cp pbw-ear.ear /app/ibm/was8/profiles/AppSrv01/monitoredDeployableApps/servers/server1
cd /app/ibm/was8/profiles/AppSrv01/bin
./startServer.sh server1
#
