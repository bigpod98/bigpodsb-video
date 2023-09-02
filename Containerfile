FROM ghcr.io/ublue-os/kinoite-main:latest
RUN rpm-ostree install gnome-terminal
COPY rootfs/* /
RUN rpm-ostree override remove konsole5 plasma-drkonqi
