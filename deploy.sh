#!/bin/bash

kubectl apply -f shopping-cart-deployment.yml
kubectl apply -f payment-service-deployment.yml
kubectl apply -f error-pages-deployment.yml