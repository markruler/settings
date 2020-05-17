# K8s for Debian 11 (Bullseye)

## Required

```sh
# 리눅스에서 가상화 지원 여부를 확인하려면, 아래의 명령을 실행하고 출력이 비어있지 않은지 확인한다.
$ grep -E --color 'vmx|svm' /proc/cpuinfo
```

## Install

```sh
# Set SELinux in permissive mode (effectively disabling it)
setenforce 0
sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

$ yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
$ sudo apt-mark hold kubelet kubeadm kubectl
$ systemctl enable --now kubelet
$ systemctl daemon-reload
$ systemctl restart kubelet
$ kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=172.16.1.100
$ kubectl version
# 1번째 방법
$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
$ sudo chown $(id -u):$(id -g) $HOME/.kube/config
# 2번째 방법
$ export KUBECONFIG=/etc/kubernetes/admin.conf
```

```sh
# running with swap on is not supported. Please disabled swap
# 위 오류가 발생한다면
$ swapoff –a
# => swapoff: command not found
$ PATH=$PATH:/sbin
```

```sh
# https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network

# https://docs.projectcalico.org/getting-started/kubernetes/quickstart#create-a-single-host-kubernetes-cluster
# Installing Network solutionsts/calico.yaml -OO
$ curl https://docs.projectcalico.org/v3.7/manifests/calico.yaml -O
$ kubectl apply -f calico.yaml
```

```sh
$ kubeadm reset
$ kubeadm init –-pod-network-cidr=192.168.0.0/16
```