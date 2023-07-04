# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors and Alex313031.
# Distributed under the license specified in the root directory of this project.

EAPI="5"
inherit appid udev
DESCRIPTION="drivers, config files for Raspberry Pi 4"
HOMEPAGE="https://fydeos.io"

LICENSE="BSD-Fyde"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    !<chromeos-base/gestures-conf-0.0.2
    chromeos-base/device-appid
    chromeos-base/bluetooth-input-fix
"

DEPEND="${RDEPEND} chromeos-base/chromeos-config"
S=${WORKDIR}

src_install() {
  udev_dorules "${FILESDIR}/udev/10-vchiq-permissions.rules"
  udev_dorules "${FILESDIR}/udev/50-media.rules"
  insinto /etc/init
  doins "${FILESDIR}/bt/bluetooth_uart.conf"
  doins "${FILESDIR}/bt/console-ttyAMA0.override"
  doins "${FILESDIR}"/audio/rpi4-hdmi.conf
  insinto /firmware/rpi
  doins "${FILESDIR}/kernel-config"/*
  exeinto /usr/share/cros/init
  doexe "${FILESDIR}"/audio/set-hdmi.sh
  dosym /lib/firmware /etc/firmware
  insinto "/etc/gesture"
  doins "${FILESDIR}"/gesture/*
}
