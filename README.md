# Hello World App

## Getting Started

```bash
$ git clone git@github.com:spesnova/docker-hands-on.git && cd docker-hands-on/coreos
$ vagrant up
$ vagrant ssh core-01
```

## build

```bash
core@core-01 $ cd share
core@core-01 $ docker build -t=spesnova/hello-world .
```

## push

```bash
core@core-01 $ docker push spesnova/hello-world
```

## pull

```bash
core@core-01 $ docker pull spesnova/hello-world
```

## run

```bash
core@core-01 $ docker run --rm --name hello-world -p 80:4567 spesnova/hello-world
```
