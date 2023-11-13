#!/bin/bash

kubectl delete -f yesterz-booking-deploy.yaml
kubectl delete -f yesterz-hotel-deploy.yaml
kubectl delete -f yesterz-loyalty-deploy.yaml
kubectl delete -f yesterz-payment-deploy.yaml
kubectl delete -f yesterz-rating-deploy.yaml
kubectl delete -f yesterz-report-deploy.yaml
kubectl delete -f yesterz-session-deploy.yaml
kubectl delete -f yesterz-gateway-deploy.yaml