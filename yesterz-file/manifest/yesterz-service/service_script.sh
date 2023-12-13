#!/bin/bash

kubectl apply -f yesterz-gateway-service.yaml
kubectl apply -f yesterz-booking-service.yaml
kubectl apply -f yesterz-hotel-service.yaml
kubectl apply -f yesterz-loyalty-service.yaml
kubectl apply -f yesterz-payment-service.yaml
kubectl apply -f yesterz-rating-service.yaml
kubectl apply -f yesterz-report-service.yaml
kubectl apply -f yesterz-session-service.yaml