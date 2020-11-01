# swiftkube-c-t-l

<p align="center">
	<img src="https://img.shields.io/badge/Swift-5.2-orange.svg" />
	<img src="https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat" alt="Mac + Linux" />
</p>

## Overview

An example  Kubernetes CLI using [SwiftkubeClient](https://github.com/swiftkube/client) implementing a tiny subset of the functionality for demo purposes. The implemented API mimicks `kubectl` .

## Showcases

- [x] Load Kubernetes objects
  - [x] by name in a given namespace
  - [x] list objects in all namespaces
- [x] Create Kubernetes objects
  - [x] `ConfigMaps` via `--from-literal` and `--from-file`
  - [x] `Deployments` with a given `image`
- [x] Apply object manifests from a file

## Usage

Clone this repository and run:

```bash
$ swift build
$ .build/debug/swiftkubectl -h
OVERVIEW: Swiftkube-c-t-l

An example kubernetes cli using SwiftkubeClient implementing
a tiny subset of the functionality for demo purposes.

USAGE: swiftkubectl <subcommand>

OPTIONS:
-h, --help              Show help information.

SUBCOMMANDS:
apply                   Apply a configuration to a resource by filename.
get                     Display one or many resources.
create                  Create a resource.

See 'swiftkubectl help <subcommand>' for detailed help.
```