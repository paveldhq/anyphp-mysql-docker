# any PHP + MySQL [![Build Status](https://travis-ci.org/paveldhq/anyphp-mysql-docker.svg?branch=master)](https://travis-ci.org/paveldhq/anyphp-mysql-docker)

## Description
Image based on Small light-weight docker image based on [anyphp-docker](https://github.com/paveldhq/anyphp-docker) allows to select which MySQL is required:
 * 5.7
 * 8.0

MySQL is installed `WITHOUT` root password, so you should set it by your own.
 
Originally image designed to be a base image for docker container that executes tests. MySQL Version can be customized through [build arguments](https://docs.docker.com/engine/reference/commandline/build/#set-build-time-variables---build-arg).

## Usage:

```
FROM pratushnyi/anyphp-mysql:<tag>
...
```

where `<tag>` may be one of:
 * `bionic-5.7` - Ubuntu 18.04 + MySQL 5.7
 * `bionic-8.0` - Ubuntu 18.04 + MySQL 8.0
 * `stretch-5.7` - Debian 9 + MySQL 5.7
 * `stretch-8.0` - Debian 9 + MySQL 5.7
 * `buster-5.7` - Debian 10 + MySQL 5.7 `latest`
 * `buster-8.0` - Debian 10 + MySQL 5.7
