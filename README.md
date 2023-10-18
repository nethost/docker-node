# docker-node

🐳 Un-official Node.js docker image, made with love by the node community.

## What is node ?

Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.

## What tools included ?

-   [pm2](https://pm2.keymetrics.io/)

## How to use this image ?

Create a Dockerfile in your Node.js app project

```bash
# specify the node base image with your desired version node:<version>
FROM nethost/node:20.9
# replace this with your application's default port
EXPOSE 3000
```

You can then build and run the Docker image:

```sh
$ docker build -t my-nodejs-app .
$ docker run -it --rm --name my-running-app my-nodejs-app
```

If you prefer Docker Compose:

```yaml
version: "2"
services:
    node:
        image: "nethost/node:20.9"
        user: "node"
        working_dir: /home/node/app
        environment:
            - NODE_ENV=production
        volumes:
            - ./:/home/node/app
        expose:
            - "8081"
        command: "npm start"
```

You can then run using Docker Compose:

```sh
$ docker-compose up -d
```
