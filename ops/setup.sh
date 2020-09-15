#!/bin/bash

cp .env.example .env

npm install
npm run gulp copy

winpty docker-compose exec app composer install

winpty docker-compose exec app php artisan key:generate
winpty docker-compose exec app php artisan config:clear
winpty docker-compose exec app php artisan migrate
winpty docker-compose exec app php artisan db:seed