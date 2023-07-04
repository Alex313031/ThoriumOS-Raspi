# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors and Alex313031.
# Distributed under the license specified in the root directory of this project.

EAPI="5"

DESCRIPTION="Add powerwash command shortcut 'clobber' to usr/local/sbin"
HOMEPAGE="https://fydeos.io"

LICENSE="BSD-Fyde"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S=${WORKDIR}

src_install() {
  exeinto /usr/sbin
  doexe ${FILESDIR}/clobber 
}
