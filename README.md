# Docker Pelican

[![CircleCI](https://circleci.com/gh/orthanc/docker-pelican.svg?style=svg)](https://circleci.com/gh/orthanc/docker-pelican)

This is an install of [Pelican](https://blog.getpelican.com/) static site generator as well as the pelican plugins (at `/pelican-plugins`)
intended for use in CI builds of Pelican sites.

The versions are not locked down, so each time this will be based on the latest `python:3-alpine` tag and
install the latest Pelican and pelican-plugins.

Each build of this repository creates four tags:

* `latest`
* `pelican-<PELICAN MAJOR VERSION>_python-<PYTHON MAJOR VERSION>`
* `pelican-<PELICAN MAJOR VERSION>.<AWS CLI MINOR VERSION>_python-<PYTHON MAJOR VERSION>.<PYTHON MINOR VERSION>`
* `pelican-<PELICAN MAJOR VERSION>.<AWS CLI MINOR VERSION>_python-<PYTHON MAJOR VERSION>.<PYTHON MINOR VERSION>`
* `pelican-<PELICAN VERSION>_python-<PYTHON VERSION>_build-<BUILD NUMBER>`

The idea is that by picking the right tag you can have consistency for your builds without having to manually upgrade
the tag all the time. Generally recommended is to use the major version tag as minor versions should be backwards
compatible.

The resulting docker images are published as [orthanc2/awscli](https://hub.docker.com/r/orthanc2/pelican)
