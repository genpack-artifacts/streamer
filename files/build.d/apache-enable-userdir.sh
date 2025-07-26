set -e
sed -i 's/^APACHE2_OPTS=\(.*\)"$/APACHE2_OPTS=\1 -D USERDIR"/' /etc/conf.d/apache2