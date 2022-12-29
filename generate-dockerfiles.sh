VERSION=7.4 TYPE=cli OS=alpine ./templater.sh Dockerfile_cli > 7.4/alpine/cli/Dockerfile
VERSION=7.4 TYPE=fpm OS=alpine ./templater.sh Dockerfile_fpm > 7.4/alpine/fpm/Dockerfile