# minikube for Mac OS X

## Required
```sh
# Docker for Mac OS Desktop 에서 kubernetes disabled
$ sysctl -a | grep -E --color 'machdep.cpu.features|VMX'
```

## Install

> https://kubernetes.io/docs/tasks/tools/install-minikube/
> 
```zsh
$ brew install minikube

# OR

$ curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
  && chmod +x minikube
$ sudo mv minikube /usr/local/bin
```

```zsh
# Upgrade kubectl-client version
# 위 이미지처럼 client version 이 기존에 깔려있었기 때문에 낮음
# https://stackoverflow.com/questions/53701151/how-to-upgrade-kubectl-client-version

$ curl -LO https://storage.googleapis.com/kubernetes-release/release/<specific-kubectl-version>/bin/darwin/amd64/kubectl
$ curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/darwin/amd64/kubectl
$ chmod +x ./kubectl
$ sudo mv ./kubectl $(which kubectl)

# OR

$ brew upgrade kubernetes-cli
```

```zsh
$ minikube start \
--kubernetes-version=v1.16.0 \
--cpus=1 \
--driver=hyperkit \
--container-runtime=docker \
--extra-config=kubelet.streaming-connection-idle-timeout=0 \
--addons dashboard \
--addons registry \
--nodes=2

$ minikube status
```