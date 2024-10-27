#!/bin/bash

# Eliminar todos los Deployments en el espacio de nombres 'default'
echo "Eliminando todos los Deployments en el espacio de nombres 'default'..."
kubectl delete deployments --all

# Eliminar todos los Services en el espacio de nombres 'default'
echo "Eliminando todos los Services en el espacio de nombres 'default'..."
kubectl delete services --all

echo "Todos los Deployments y Services han sido eliminados."
