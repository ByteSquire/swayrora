#!/usr/bin/bash

set -ouex pipefail

# Branding for Bluefin/Aurora
if test "$BASE_IMAGE_NAME" = "kinoite"; then
    sed -i 's/Bluefin/Aurora/g' /etc/yafti.yml
    sed -i 's/Aurora (Beta)/Aurora \- Bluefin\-KDE (Alpha)/' /etc/yafti.yml
    sed -i 's/Bluefin/Aurora/' /usr/libexec/ublue-flatpak-manager
elif test "$BASE_IMAGE_NAME" = "sericea"; then
    sed -i 's/Bluefin/Swayrora/g' /etc/yafti.yml
    sed -i 's/Swayrora (Beta)/Swayrora \- Bluefin\-KDE (Alpha)/' /etc/yafti.yml
    sed -i 's/Bluefin/Swayrora/' /usr/libexec/ublue-flatpak-manager
fi

# Watermark for Plymouth
cp /usr/share/plymouth/themes/spinner/{"$BASE_IMAGE_NAME"-,}watermark.png
