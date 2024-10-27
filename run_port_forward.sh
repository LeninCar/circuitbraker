#!/bin/bash

# Ejecutar ambos port-forward en paralelo y mantenerlos en primer plano
kubectl port-forward service/shopping-cart-service 3000:3000 &
kubectl port-forward service/error-pages 8080:8080 &

# Atrapar la señal de interrupción (Ctrl + C) y matar ambos procesos
trap 'kill %1; kill %2' SIGINT

# Espera a que ambos comandos terminen
wait