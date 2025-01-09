# ベースイメージ
FROM php:8.1-fpm

# 必要なPHPモジュールとComposerのインストール
RUN apt-get update && apt-get install -y \
    gnupg \
    libzip-dev \
    unzip \
    zlib1g-dev \
    cron \
    vim \
    && docker-php-ext-install \
    pdo_mysql \
    opcache \
    zip

# Composerをインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 作業ディレクトリ
WORKDIR /var/www

#　手動コマンド
# npmインストール
# apt-get install -y nodejs npm
# composer require innologica/laravel-vite
# npm install