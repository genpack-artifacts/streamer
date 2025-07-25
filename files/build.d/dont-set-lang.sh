set -e
sed -i 's/^LANG=/#LANG=/' /etc/environment.d/10-gentoo-env.conf
sed -i 's/^export LANG=/#export LANG=/' /etc/profile.env