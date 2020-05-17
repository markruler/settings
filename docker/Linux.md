# Docker for Debian 11 (Bullseye)

## Required

- https://sarc.io/index.php/forum/tips/535-linux-centos-ubuntu-os

```sh
# 리눅스 커널 버전 확인
$ uname -r
```

- 리눅스 배포판 버전 확인
  - Redhat 계열
    - cat /etc/redhat-release
    - cat /etc/fedora-release
  - Debian 계열
    - cat /etc/debian_version

## Install

```sh
$ sudo apt-get remove docker docker-engine docker.io containerd runc
$ sudo apt-get update

$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
$ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Verify
$ sudo apt-key fingerprint 0EBFCD88

# Set up the stable repository
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Debian 10 (Buster)
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   buster \
   stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io

# List the versions available in your repo
$ apt-cache madison docker-ce
$ sudo docker version
```
## Repository
> Debian 11 (Bullseye)의 경우 최근에 나와서 그런지 아직 도커 리포지터리에 저장되어 있지 않은 것 같다. 리포지터리를 등록하면 해당 버전에 해당하는 파일이 없다고 나오는데 그냥 Debian 10 (Buster) 버전으로 다운로드 받아서 사용해도 무방했다.