# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Meme program which prints 'Helo' to the terminal. Based off a fish meme."

HOMEPAGE="https://github.com/seal331/helo"

SRC_URI="https://github.com/seal331/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64" # maybe add more arches, i doubt this thing will ever break

RESTRICT="mirror"

src_prepare() {
	eapply_user
	chmod +x configure || die
}
