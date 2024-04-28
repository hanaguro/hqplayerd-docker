# hqplayerd-docker
## 概要
Dockerでhqplayer embedded 4.35.2を動かすためのDockerfile。
## 使い方
githubからcloneする。
```
git clone https://github.com/hanaguro/hqplayerd-docker.git
```
ディレクトリに移動。
```
cd hqplayerd-docker
```
buildする。
```
docker build ./ -t fedora37
```
立ち上げる。
```
docker run  -p 8088:8088 -i --network=host -t fedora37
```
