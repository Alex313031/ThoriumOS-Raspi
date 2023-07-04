# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors and Alex313031.
# Distributed under the license specified in the root directory of this project.

# https://www.chromium.org/chromium-os/external-bsp-hosting/

EAPI=7

DESCRIPTION="Generic ebuild which satisifies virtual/chromeos-bsp.
This is a direct dependency of virtual/target-chromium-os, but is expected
to be overridden in an overlay for each specialized board.  A typical
non-generic implementation will install any board-specific configuration
files and drivers which are not suitable for inclusion in a generic board
overlay."
HOMEPAGE="https://chromium.googlesource.com/chromiumos/"

LICENSE="BSD BSD-Google BZIP2 GPL-2 GPL-2+ GPL-3 LGPL-2.1 unRAR public-domain ThoriumOS-LICENSE"
SLOT="0"
KEYWORDS="*"
IUSE="chrome-dev-flags drivefs frick-wallpapers libassistant thoriumos widevine gflags"

RDEPEND="
	app-misc/sl
	chromeos-base/baseboard-bsp
	chromeos-base/chromeos-bsp-raspi-frick
	virtual/fyde-packages
	chrome-dev-flags? ( chromeos-base/bash-skel )
	chromeos-base/assistant-dlc
	thoriumos? ( chromeos-base/chromeos-osrelease )
	chromeos-base/cros-trimly
	libassistant? ( chromeos-base/libassistant )
	chrome-dev-flags? ( chromeos-base/frick-chromedev-flags )
	frick-wallpapers? ( chromeos-base/frick-oem-wallpapers )
	drivefs? ( chromeos-base/google-drive-fs )
	widevine? ( chromeos-base/libwidevine )
	gflags? ( dev-cpp/gflags )
	dev-util/mem
	dev-util/strace
	dev-vcs/git
	net-analyzer/iftop
	net-analyzer/netperf
	net-libs/miniupnpc
	net-misc/curl
	net-misc/gsutil
	net-misc/iperf
	net-misc/iputils
	net-misc/libdiagcfg
	net-misc/rsync
	net-misc/telnet-bsd
	net-misc/tlsdate
	net-misc/wget
	sys-apps/coreutils
	sys-apps/i2c-tools
	sys-apps/iotools
	sys-apps/lm-sensors
	sys-apps/net-tools
	sys-apps/smartmontools
	sys-apps/usbutils
	sys-fs/cryptsetup
	sys-fs/mtools
	sys-fs/ncdu
	sys-libs/libcap
	sys-libs/zlib
	sys-process/htop
	sys-process/iotop
	sys-process/lsof
	sys-process/procps
	sys-process/psmisc
	sys-process/time
	virtual/chromeos-config-bsp
"

DEPEND="${RDEPEND}"
