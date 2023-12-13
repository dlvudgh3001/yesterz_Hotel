#!/bin/bash

kubectl apply -f yesterz-gateway-deploy.yaml
kubectl apply -f yesterz-booking-deploy.yaml
kubectl apply -f yesterz-hotel-deploy.yaml
kubectl apply -f yesterz-loyalty-deploy.yaml
kubectl apply -f yesterz-payment-deploy.yaml
kubectl apply -f yesterz-rating-deploy.yaml
kubectl apply -f yesterz-report-deploy.yaml
kubectl apply -f yesterz-session-deploy.yaml