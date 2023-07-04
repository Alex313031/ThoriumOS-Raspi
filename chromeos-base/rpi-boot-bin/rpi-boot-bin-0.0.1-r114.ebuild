# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors and Alex313031.
# Distributed under the license specified in the root directory of this project.

EAPI="5"
EGIT_REPO_URI="https://github.com/FydeOS/rpi-boot-bin.git"

inherit git-r3
DESCRIPTION="Raspberry Pi boot binary files"
HOMEPAGE="https://fydeos.io"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

src_install() {
  insinto /firmware/rpi
  doins -r "${S}"/*
}
