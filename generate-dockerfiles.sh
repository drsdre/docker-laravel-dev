VERSION=7.2 TYPE=cli OS=alpine ./templater.sh Dockerfile_cli > 7.2/alpine/cli/Dockerfile
VERSION=7.2 TYPE=fpm OS=alpine ./templater.sh Dockerfile_fpm > 7.2/alpine/fpm/Dockerfile
VERSION=7.3 TYPE=cli OS=alpine ./templater.sh Dockerfile_cli > 7.3/alpine/cli/Dockerfile
VERSION=7.3 TYPE=fpm OS=alpine ./templater.sh Dockerfile_fpm > 7.3/alpine/fpm/Dockerfile
VERSION=7.3 TYPE=fpm-nginx OS=alpine ./templater.sh Dockerfile_fpm > 7.3/alpine/fpm-nginx/Dockerfile
VERSION=7.4 TYPE=cli OS=alpine ./templater.sh Dockerfile_cli > 7.4/alpine/cli/Dockerfile
VERSION=7.4 TYPE=fpm OS=alpine ./templater.sh Dockerfile_fpm > 7.4/alpine/fpm/Dockerfile
VERSION=7.4 TYPE=fpm-nginx OS=alpine ./templater.sh Dockerfile_fpm > 7.4/alpine/fpm-nginx/Dockerfile