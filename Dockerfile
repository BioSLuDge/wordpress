FROM wordpress

RUN apt-get update -y && \
    apt-get install -y libgmp-dev re2c libmhash-dev libmcrypt-dev file && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/local/include/ && \
    docker-php-ext-configure gmp && \
    docker-php-ext-install gmp
