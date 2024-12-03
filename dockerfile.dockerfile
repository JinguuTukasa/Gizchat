# ベースイメージ
FROM php:8.1-fpm

# 作業ディレクトリ
WORKDIR /var/www

# 必要なPHPモジュールとComposerのインストール
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql gd

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
