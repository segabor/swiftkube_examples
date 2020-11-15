# SwiftkubeDash

<p align="center">
	<img src="https://img.shields.io/badge/Swift-5.2-orange.svg" />
	<img src="https://img.shields.io/badge/SwiftkubeClient-0.1.0-blue.svg" />
	<img src="https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat" alt="Mac + Linux" />
</p>

## Overview

A miny example dashboard using [SwiftkubeClient](https://github.com/swiftkube/client) on [Vapor](https://github.com/vaopr/vapor).

## Screenshots

![Deployments](./screenshots/deployments.png)
![Deployment](./screenshots/one-deployment.png)
![Pods](./screenshots/pods.png)
![Pod](./screenshots/one-pod.png)
![Logs](./screenshots/logs.png)
![Create](./screenshots/create-object.png)

## Usage

Clone this repository and build the docker image:

```bash
$ git clone https://github.com/swiftkube/examples
$ cd examples/swiftkubedash
$ docker build . -t <image>
```