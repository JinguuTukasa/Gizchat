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

# Composerで依存関係をインストール
RUN composer install --no-dev --optimize-autoloader

# コンテナにアプリケーションをコピー
COPY . .

# Laravelの権限を設定
RUN chown -R www-data:www-data /var/www \
    && chmod -R 775 /var/www/storage

# サーバーを立ち上げる
CMD ["php-fpm"]

# 作業ディレクトリ
WORKDIR /var/www
