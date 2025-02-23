#!/bin/bash

kubectl apply -f roles.yaml
kubectl apply -f role-bindings.yaml

kubectl create serviceaccount viewer -n default
kubectl create serviceaccount editor -n default
kubectl create serviceaccount admin -n default

kubectl create token viewer -n default
kubectl create token editor -n default
kubectl create token admin -n default