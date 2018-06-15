#!/bin/bash -ex

INSTALL=$1
DBARCHIVE=$2
JEEEAR=$3

mkdir -p /app/ibm/
cd /tmp
unzip $INSTALL -d /app/ibm/
unzip $DBARCHIVE -d /app/ibm/was8/derby/databases
rm -f /app/ibm/was8/profiles/AppSrv01/monitoredDeployableApps/servers/server1/*
cp $JEEEAR /app/ibm/was8/profiles/AppSrv01/monitoredDeployableApps/servers/server1
cd /app/ibm/was8/profiles/AppSrv01/bin
./startServer.sh server1
#
