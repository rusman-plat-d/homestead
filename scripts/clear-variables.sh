#!/usr/bin/env bash

# Clear The Old Environment Variables

sed -i '/# Set Homestead Environment Variable/,+1d' /home/vagrant/.profile

if [ -f /etc/php/8.1/fpm/pool.d/www.conf ]; then
    sed -i '/env\[.*/,+1d' /etc/php/8.1/fpm/pool.d/www.conf
fi
