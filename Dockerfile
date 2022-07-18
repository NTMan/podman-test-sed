FROM fedora:37

COPY config/inside.ini /root/inside.ini

ENTRYPOINT sed -i "s/#foo/value1/g" /root/inside.ini
