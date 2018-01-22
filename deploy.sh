#!/bin/bash 
kubectl apply -f kubernetes/monitoring-namespace.yaml
kubectl apply -f kubernetes/alertmanager-deployment.yaml
kubectl apply -f kubernetes/prometheus-deployment.yaml
kubectl apply -f kubernetes/webhook-deployment.yaml
kubectl apply -f kubernetes/grafana-deployment.yaml
sleep 2
kubectl get pods -n monitoring
kubectl get services -n monitoring
