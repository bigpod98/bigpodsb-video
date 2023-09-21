ARG IMAGE_FLAVOR
ARG VERSION

FROM ghcr.io/ublue-os/kinoite-$IMAGE_FLAVOR:$VERSION
RUN rpm-ostree install gnome-terminal cockpit-bridge cockpit-system cockpit-networkmanager cockpit-selinux cockpit-storaged cockpit-podman cockpit-machines cockpit-pcp 
COPY rootfs/* /
RUN rpm-ostree override remove konsole5 plasma-drkonqi firefox firefox-langpacks htop nvtop okular plasma-discover kate ark kcalc kcharselect kfind kmag kmousetool spectacle dolphin ark-libs dolphin-plugins plasma-discover-notifier kate-plugins plasma-discover-flatpak dolphin-libs
RUN rm -rf /var/* /tmp/*
RUN ostree container commit
