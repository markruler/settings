# minikube for Windows 10

## Install

> https://kubernetes.io/docs/tasks/tools/install-minikube/\
> ctrl shift mouse1 + Windows Terminal

```bat
PS> systeminfo
> Hyper-V Requirements:     VM Monitor Mode Extensions: Yes
                            Virtualization Enabled In Firmware: Yes
                            Second Level Address Translation: Yes
                            Data Execution Prevention Available: Yes
PS> choco install minikube
```

> \* Verifying Kubernetes components...\
! Istio needs 8192MB of memory -- your configuration only allocates 6000MB\
! Istio needs 4 CPUs -- your configuration only allocates 2 CPUs

> https://istio.io/docs/setup/platform-setup/minikube/

```powershell
# PS> minikube start `
# --extra-config=kubelet.streaming-connection-idle-timeout=0 `
# --kubernetes-version=v1.16.0 `
# --cpus=2 `
# --memory=8192 `
# --driver=hyperv `
# --container-runtime=docker `
# --addons dashboard `
# --addons registry `
# --nodes=2
# --addons istio `

# OR

# delete 하고 start 해도 유지시키도록 config set
PS> minikube config -h
PS> minikube config set kubernetes-version v1.16.0
PS> minikube config set cpus 4
PS> minikube config set memory 8192
# PS> minikube config set memory 16384
# E0517 11:46:40.046078   10368 main.go:106] libmachine: [stderr =====>] : Hyper-V\Start-VM : 'minikube-m02'을(를) 시작하지 못했습니다.
# 16384MB RAM을 할당할 수 없습니다. Insufficient system resources exist to complete the requested service.(0x800705AA).
# 아마 node 당 16g를 주는 것 같다.
PS> minikube config set disk-size 20000m
# E0517 11:52:59.360699   58256 main.go:106] libmachine: [stderr =====>] : Hyper-V\New-VHD : 가상 하드 디스크를 만들지 못했습니다.
# 시스템에서 'C:\Users\csu04\.minikube\machines\minikube-m02\fixed.vhd'을(를) 만들지 못했습니다. The file exists.(0x80070050). At line:1 char:1
#+ Hyper-V\New-VHD -Path 'C:\Users\csu04\.minikube\machines\minikube-m02 ...
#+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#    + CategoryInfo          : NotSpecified: (:) [New-VHD], VirtualizationException
#    + FullyQualifiedErrorId : OperationFailed,Microsoft.Vhd.PowerShell.Cmdlets.NewVhd
# 디스크 용량은 충분한데 왜..?
PS> minikube config set driver hyperv
PS> minikube config set container-runtime docker
PS> minikube config view
PS> minikube start `
--nodes=1 `
--extra-config=kubelet.streaming-connection-idle-timeout=0 `
--addons dashboard `
--addons registry `
--alsologtostderr -v=9

# multicluster in my computer
# nodes=2 cpus=2 memory=8192

# Istio in my computer
# nodes=1 cpus=4 memory=8192

PS> minikube status
> minikube
> type: Control Plane
> host: Running
> kubelet: Running
> apiserver: Running
> kubeconfig: Configured

> minikube-m02
> type: Worker
> host: Running
> kubelet: Running

PS> kubectl get nodes
> NAME           STATUS   ROLES    AGE     VERSION
> minikube       Ready    master   7m14s   v1.16.0
> minikube-m02   Ready    <none>   3m23s   v1.16.0

PS> minikube ssh
$ top

PS> minikube tunnel
PS> minikube tunnel --cleanup=true

PS> .\watch.ps1

PS> eval $(minikube docker-env)
```