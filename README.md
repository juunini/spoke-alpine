# Spoke Docker

## What is Spoke?

[Spoke](https://github.com/mozilla/Spoke) is [Mozilla Hubs](https://hubs.mozilla.com/) map editor

## How to get?

```sh
docker pull juunini/spoke:0.0.1
```

## How to run?

```sh
docker run -dit --rm --name spoke -p 9090:9090 juunini/spoke:0.0.1
```

## How to build?

```sh
docker build - < Dockerfile -t juunini/spoke:<tag>
```

## My deploy command

```sh
docker buildx build --platform linux/arm64,linux/amd64,linux/amd64/v2,linux/386,linux/arm/v7 - < Dockerfile -t juunini/spoke:0.0.1 --push
```
