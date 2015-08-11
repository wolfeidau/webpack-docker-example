# webpack-docker-example

This is a simple webpack project built to illustrate how to use develop inside docker with live reload. It is based on [macropodhq/webpack-skel](https://github.com/macropodhq/webpack-skel).

# Running

To get started on OSX build a docker container to run this project in.

```
docker build -t iojsfsnotify .
```

Then start the docker container, note the `PROJECT_PATH` is passing in the current working directory and the volume `/Users`.

```
docker run -it -e PROJECT_PATH=$(pwd) -e DOCKER_IP=$(boot2docker ip) \
  -v "/Users:/Users" -p 8080:8080 -t iojsfsnotify
```

Install your npm modules.

```
npm install
```

Start the `webpack-dev-server`.

```
npm start
```
