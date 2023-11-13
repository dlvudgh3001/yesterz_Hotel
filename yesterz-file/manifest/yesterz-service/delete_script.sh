#!/bin/bash

kubectl delete -f yesterz-gateway-service.yaml
kubectl delete -f yesterz-booking-service.yaml
kubectl delete -f yesterz-hotel-service.yaml
kubectl delete -f yesterz-loyalty-service.yaml
kubectl delete -f yesterz-payment-service.yaml
kubectl delete -f yesterz-rating-service.yaml
kubectl delete -f yesterz-report-service.yaml
kubectl delete -f yesterz-session-service.yaml