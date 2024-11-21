# ベースイメージ
FROM php:8.3-fpm

# 作業ディレクトリを指定
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

# アプリケーションのファイルをコンテナにコピー
COPY . .

# 権限の設定（アプリケーションのファイルをコピーした後に実行）
RUN chown -R www-data:www-data /var/www \