set -e

ARCH=$(uname -m)

# This script is for x86_64 only
if [ "$ARCH" != "x86_64" ]; then
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

NDI_SDK_URL=https://downloads.ndi.tv/SDK/NDI_SDK_Linux/Install_NDI_SDK_v6_Linux.tar.gz

cd /tmp
download $NDI_SDK_URL | tar zxf -
yes | PAGER="cat" sh "Install_NDI_SDK_v6_Linux.sh"

cd "NDI SDK for Linux"

cp -av lib/x86_64-linux-gnu/. /usr/lib/
