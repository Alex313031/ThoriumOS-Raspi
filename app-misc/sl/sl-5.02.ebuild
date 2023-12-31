# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="sophisticated graphical program which corrects your miss typing"
HOMEPAGE="http://www.tkl.iis.u-tokyo.ac.jp/~toyoda/index_e.html https://github.com/mtoyoda/sl/"
SRC_URI="https://github.com/mtoyoda/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE="l10n_ja"

RDEPEND="sys-libs/ncurses:0="
DEPEND="
	${RDEPEND}
	virtual/pkgconfig
"

DOCS=( README.md )

src_prepare() {
	default
	sed \
		-e "s/-lncurses/$($(tc-getPKG_CONFIG) --libs ncurses)/" \
		-i Makefile || die
}

src_compile() {
	emake CC=$(tc-getCC) CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
}

src_install() {
	dobin "${PN}"
	doman "${PN}.1"

	if use l10n_ja; then
		newman "${PN}.1.ja" "${PN}.ja.1"
		DOCS+=( README.ja.md )
	fi

	einstalldocs
}
