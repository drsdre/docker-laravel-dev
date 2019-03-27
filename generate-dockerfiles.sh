#!/usr/bin/env bash
VERSION=7.1 TYPE=cli OS=alpine ./templater.sh Dockerfile > 7.1/alpine/cli/Dockerfile
VERSION=7.1 TYPE=fpm OS=alpine ./templater.sh Dockerfile > 7.1/alpine/fpm/Dockerfile
VERSION=7.2 TYPE=cli OS=alpine ./templater.sh Dockerfile > 7.2/alpine/cli/Dockerfile
VERSION=7.2 TYPE=fpm OS=alpine ./templater.sh Dockerfile > 7.2/alpine/fpm/Dockerfile
VERSION=7.3 TYPE=cli OS=alpine ./templater.sh Dockerfile > 7.3/alpine/cli/Dockerfile
VERSION=7.3 TYPE=fpm OS=alpine ./templater.sh Dockerfile > 7.3/alpine/fpm/Dockerfile