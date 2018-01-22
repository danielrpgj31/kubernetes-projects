#!/bin/bash
echo scale up action >> scaleup.log
MASTER=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT
echo Kubernetes master is $MASTER
source /var/scripts/scalingAction.sh --action=scaleUp --domain_uid=domain1 --cluster_name=cluster-1 --kubernetes_master=$MASTER --wls_domain_namespace=domain1
