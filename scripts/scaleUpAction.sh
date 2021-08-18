#!/bin/bash
echo scale up action >> scaleup.log
MASTER=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT

echo Kubernetes master is $MASTER

source /var/scripts/scalingAction.sh --action=scaleUp --domain_uid=sample-domain1 --cluster_name=cluster-1 --kubernetes_master=$MASTER --wls_domain_namespace=sample-domain1-ns --operator_service_name=internal-weblogic-operator-svc --operator_namespace=sample-weblogic-operator-ns --operator_service_account=sample-weblogic-operator-sa
