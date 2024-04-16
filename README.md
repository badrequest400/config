# Config and env setup repo for macs

This repo is a collection of dotfiles, scripts and other configuration files I use to setup on a new mac. It is a work in progress and I try to keep it up to date as I change my setup.

## Usage

The `Makefile` is meant to act as a task runner to setup the environment. The targets are documented and can be run with `make <target>`.

To get a list of all available targets and their descriptions:
```sh
make help
```

To run __all__ targets and attempt a fully automatic setup.
```sh
make all
```
