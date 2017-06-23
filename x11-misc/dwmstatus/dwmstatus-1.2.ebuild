# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="dwm’s status bar text"
HOMEPAGE="http://dwm.suckless.org/dwmstatus/"
EGIT_REPO_URI="git://git.suckless.org/dwmstatus"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
		emake CC=$(tc-getCC)
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
} 
