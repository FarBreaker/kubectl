#!/usr/bin/env sh

# Install kubectl 
curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl \
&& install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

telnet 10.141.249.7 6443
# Create kube directory
if [ ! -d "$HOME/.kube" ]; then
	mkdir -p $HOME/.kube
fi

# paste kubeconfig
#echo $BASE64_KUBE_CONFIG | base64 -d > $HOME/.kube/config 
#echo $BASE64_KUBE_CONFIG | base64 -d > /cicd-svc-kubeconfig.yml 

ls -al
pwd

kubectl $*
