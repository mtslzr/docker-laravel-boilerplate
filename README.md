# Docker-Laravel Boilerplate

*NOTICE: This repo is not really maintained, and was built for testing purposes.*

*For an up-to-date implementation of Laravel in Docker, check out [Laradock](https://github.com/laradock/laradock) or [Vessel](https://github.com/shipping-docker/vessel).*

[![Build Status](https://travis-ci.com/mtslzr/docker-laravel-boilerplate.svg?branch=master)](https://travis-ci.com/mtslzr/docker-laravel-boilerplate)

## What is it?

This is a pre-packaged setup for Laravel that deploys Docker containers for PHP, Nginx, and Maria to quickly enable local Laravel development.

## Usage

### Install

```bash
git clone https://github.com/mtslzr/docker-laravel-boilerplate
cd docker-laravel-boilerplate
```

### Setup

Copy the default env file.

```bash
cp laravel/.env{.example,}
```

Start up the Docker containers.

```bash
cd docker
docker-compose up
```

Once running, you'll need to generate a key (only for the first run) with artisan.

```bash
docker exec -ti laravel-app php composer.phar update 
docker exec -ti laravel-app php artisan key:generate
```

Website will be available at http://localhost:8080.

## Specs

* Docker
* Laravel (5.8)
* MariaDB (10.5)
* Nginx
* PHP (7.4 w/ Composer 1.7.3)
