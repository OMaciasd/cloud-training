#!/bin/bash

# kubernetes_setup.sh
shellcheck provisioning/kubernetes/setup.sh

curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://apt.kubernetes.io/ kubernetes-xenial main"

sudo apt-get install -y apt-transport-https \
	 ca-certificates \
	 software-properties-common \
	 ubuntu-pro-client \
	 kubelet \
	 kubeadm \
	 kubectl

sudo swapoff -a
