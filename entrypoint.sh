#!/usr/bin/env sh

# Create kube directory
if [ ! -d "$HOME/.kube" ]; then
	mkdir -p $HOME/.kube
fi

# paste kubeconfig
echo $BASE64_KUBE_CONFIG | base64 -d > $HOME/.kube/config 


kubectl $*
