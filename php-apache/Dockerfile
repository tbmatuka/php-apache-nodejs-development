FROM ubuntu:22.04

# set up timezone
ENV TIMEZONE="UTC"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install deps, apache, php and php modules all in one run and clean up afterwards to reduce the snapshot size
RUN apt-get clean && \
    apt-get -y update && \
    apt-get install -y --force-yes \
        locales \
        curl \
        software-properties-common \
        git \
        apt-transport-https \
        sudo \
        nvi \
        iproute2 \
        telnet \
        dnsutils \
        unzip \
        rsync \
        inetutils-ping && \
    locale-gen en_US.UTF-8 && \
    LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes \
        apache2 \
        nano \
        lynx \
        ssmtp \
        imagemagick \
        libapache2-mod-php5.6 php5.6 php5.6-amqp php5.6-apcu php5.6-bcmath php5.6-bz2 php5.6-cgi php5.6-cli php5.6-common php5.6-curl php5.6-dev php5.6-gd php5.6-gmp php5.6-imagick php5.6-imap php5.6-intl php5.6-json php5.6-ldap php5.6-mailparse php5.6-mbstring php5.6-mcrypt php5.6-memcache php5.6-memcached php5.6-mysql php5.6-odbc php5.6-opcache php5.6-pgsql php5.6-pspell php5.6-readline php5.6-recode php5.6-redis php5.6-snmp php5.6-soap php5.6-sqlite3 php5.6-tidy php5.6-xdebug php5.6-xml php5.6-xmlrpc php5.6-xsl php5.6-yaml php5.6-zip php5.6-zmq \
        libapache2-mod-php7.0 php7.0 php7.0-amqp php7.0-apcu php7.0-apcu-bc php7.0-bcmath php7.0-bz2 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-dev php7.0-gd php7.0-gmp php7.0-imagick php7.0-imap php7.0-intl php7.0-json php7.0-ldap php7.0-mailparse php7.0-mbstring php7.0-mcrypt php7.0-memcache php7.0-memcached php7.0-mongodb php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-pspell php7.0-readline php7.0-recode php7.0-redis php7.0-snmp php7.0-soap php7.0-sodium php7.0-sqlite3 php7.0-tideways php7.0-tidy php7.0-uuid php7.0-xdebug php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-yaml php7.0-zip php7.0-zmq \
        libapache2-mod-php7.1 php7.1 php7.1-amqp php7.1-apcu php7.1-apcu-bc php7.1-bcmath php7.1-bz2 php7.1-cgi php7.1-cli php7.1-common php7.1-curl php7.1-dev php7.1-gd php7.1-gmp php7.1-imagick php7.1-imap php7.1-intl php7.1-json php7.1-ldap php7.1-mailparse php7.1-mbstring php7.1-mcrypt php7.1-memcache php7.1-memcached php7.1-mongodb php7.1-mysql php7.1-odbc php7.1-opcache php7.1-pgsql php7.1-pspell php7.1-readline php7.1-recode php7.1-redis php7.1-snmp php7.1-soap php7.1-sodium php7.1-sqlite3 php7.1-tideways php7.1-tidy php7.1-uuid php7.1-xdebug php7.1-xml php7.1-xmlrpc php7.1-xsl php7.1-yaml php7.1-zip php7.1-zmq \
        libapache2-mod-php7.2 php7.2 php7.2-amqp php7.2-apcu php7.2-apcu-bc php7.2-bcmath php7.2-bz2 php7.2-cgi php7.2-cli php7.2-common php7.2-curl php7.2-dev php7.2-gd php7.2-gmp php7.2-imagick php7.2-imap php7.2-intl php7.2-json php7.2-ldap php7.2-mailparse php7.2-mbstring php7.2-memcache php7.2-memcached php7.2-mongodb php7.2-mysql php7.2-odbc php7.2-opcache php7.2-pgsql php7.2-pspell php7.2-readline php7.2-recode php7.2-redis php7.2-snmp php7.2-soap php7.2-sqlite3 php7.2-tideways php7.2-tidy php7.2-uuid php7.2-xdebug php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-yaml php7.2-zip php7.2-zmq \
        libapache2-mod-php7.3 php7.3 php7.3-amqp php7.3-apcu php7.3-apcu-bc php7.3-bcmath php7.3-bz2 php7.3-cgi php7.3-cli php7.3-common php7.3-curl php7.3-dev php7.3-gd php7.3-gmp php7.3-imagick php7.3-imap php7.3-intl php7.3-json php7.3-ldap php7.3-mailparse php7.3-mbstring php7.3-memcache php7.3-memcached php7.3-mongodb php7.3-mysql php7.3-odbc php7.3-opcache php7.3-pgsql php7.3-pspell php7.3-readline php7.3-recode php7.3-redis php7.3-snmp php7.3-soap php7.3-sqlite3 php7.3-tideways php7.3-tidy php7.3-uuid php7.3-xdebug php7.3-xml php7.3-xmlrpc php7.3-xsl php7.3-yaml php7.3-zip php7.3-zmq \
        libapache2-mod-php7.4 php7.4 php7.4-amqp php7.4-apcu php7.4-apcu-bc php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dev php7.4-gd php7.4-gmp php7.4-imagick php7.4-imap php7.4-intl php7.4-json php7.4-ldap php7.4-mailparse php7.4-mbstring php7.4-memcache php7.4-memcached php7.4-mongodb php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-pspell php7.4-readline php7.4-redis php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-tideways php7.4-tidy php7.4-uuid php7.4-xdebug php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-yaml php7.4-zip php7.4-zmq \
        libapache2-mod-php8.0 php8.0 php8.0-amqp php8.0-apcu php8.0-bcmath php8.0-bz2 php8.0-cgi php8.0-cli php8.0-common php8.0-curl php8.0-dev php8.0-gd php8.0-gmp php8.0-imagick php8.0-imap php8.0-intl php8.0-ldap php8.0-mailparse php8.0-mbstring php8.0-memcached php8.0-mysql php8.0-odbc php8.0-opcache php8.0-pgsql php8.0-pspell php8.0-readline php8.0-redis php8.0-snmp php8.0-soap php8.0-sqlite3 php8.0-tidy php8.0-uuid php8.0-xdebug php8.0-xml php8.0-xsl php8.0-yaml php8.0-zip php8.0-zmq \
        libapache2-mod-php8.1 php8.1 php8.1-amqp php8.1-apcu php8.1-bcmath php8.1-bz2 php8.1-cgi php8.1-cli php8.1-common php8.1-curl php8.1-dev php8.1-gd php8.1-gmp php8.1-imagick php8.1-imap php8.1-intl php8.1-ldap php8.1-mailparse php8.1-mbstring php8.1-memcached php8.1-mysql php8.1-odbc php8.1-opcache php8.1-pgsql php8.1-pspell php8.1-readline php8.1-redis php8.1-snmp php8.1-soap php8.1-sqlite3 php8.1-tidy php8.1-uuid php8.1-xdebug php8.1-xml php8.1-xsl php8.1-yaml php8.1-zip php8.1-zmq \
        libapache2-mod-php8.2 php8.2 php8.2-amqp php8.2-apcu php8.2-bcmath php8.2-bz2 php8.2-cgi php8.2-cli php8.2-common php8.2-curl php8.2-dev php8.2-gd php8.2-gmp php8.2-imagick php8.2-imap php8.2-intl php8.2-ldap php8.2-mailparse php8.2-mbstring php8.2-memcached php8.2-mysql php8.2-odbc php8.2-opcache php8.2-pgsql php8.2-pspell php8.2-readline php8.2-redis php8.2-snmp php8.2-soap php8.2-sqlite3 php8.2-tidy php8.2-uuid php8.2-xdebug php8.2-xml php8.2-xsl php8.2-yaml php8.2-zip php8.2-zmq \
        php-mail && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# enable missing modules
RUN phpenmod apcu && \
    phpenmod apcu_bc && \
    a2enmod rewrite headers ssl expires proxy

# output apache logs to stdout
RUN ln -sf /proc/self/fd/1 /var/log/apache2/access.log && \
    ln -sf /proc/self/fd/1 /var/log/apache2/error.log

# set up sendmail so that mail() works
RUN echo 'FromLineOverride=YES' >> /etc/ssmtp/ssmtp.conf && \
    echo 'mailhub=mail:25' >> /etc/ssmtp/ssmtp.conf

# prepare www-data to be used as main user
RUN usermod -s /bin/bash -G staff www-data && \
    sudo -u www-data mkdir -p /var/www

COPY ./sudoers /etc/sudoers.d/www-data

# install composer
RUN curl https://getcomposer.org/composer-1.phar > composer1 && \
    curl https://getcomposer.org/composer-2.phar > composer && \
    mv composer1 composer /usr/local/bin/ && \
    chown www-data:www-data /usr/local/bin/composer1 /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer1 /usr/local/bin/composer

# link php.ini
COPY ./php.ini /etc/php.ini
RUN for phpversion in 5.6 7.0 7.1 7.2 7.3 7.4 8.0 8.1 8.2; do \
        for phpenv in apache2 cli; do \
            mv "/etc/php/$phpversion/$phpenv/php.ini" "/etc/php/$phpversion/$phpenv/php.ini.dist" ; \
            ln -s /etc/php/php.ini "/etc/php/$phpversion/$phpenv/php.ini"; \
        done; \
    done

# add xdebug settings - don't enable the mod by default
COPY ./php-xdebug.ini /etc/php/xdebug-settings.ini
RUN for phpversion in 5.6 7.0 7.1 7.2 7.3 7.4 8.0 8.1 8.2; do \
        rm "/etc/php/$phpversion/mods-available/xdebug.ini"; \
        ln -s /etc/php/xdebug-settings.ini "/etc/php/$phpversion/mods-available/xdebug.ini"; \
    done

# prepare SSL
COPY ./ssl /etc/ssl/docker

# override default vhost
COPY ./vhost.conf /etc/apache2/sites-available/000-default.conf

# prepare entrypoint and default command
COPY ./entrypoint.sh /usr/local/bin/
COPY ./apache2-foreground.sh /usr/local/sbin/

WORKDIR /app/

USER www-data

ENV DOCKER="yes"

EXPOSE 80 443

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["sudo", "/usr/local/sbin/apache2-foreground.sh"]
