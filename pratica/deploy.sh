#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade redis bitnami/redis --install --namespace=virtualizacao --values=redis/values.yaml
helm upgrade guestbook ./guestbook --install --namespace=virtualizacao --values=guestbook/values.yaml
