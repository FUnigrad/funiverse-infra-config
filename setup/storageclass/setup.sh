#!/bin/sh
helm repo add longhorn https://charts.longhorn.io
helm repo update
helm search repo longhorn
helm pull longhorn/longhorn --version 1.4.1
tar -xzf longhorn-1.4.1.tgz
rm longhorn-1.4.1.tgz