# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake toolchain-funcs

DESCRIPTION="SCO Xenix copy protection analysis tool"

HOMEPAGE="https://github.com/seal331/brandy"

SRC_URI="https://github.com/seal331/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="public-domain"

BDEPEND=">=dev-util/cmake-3.10"

SLOT="0"

KEYWORDS="~amd64"

RESTRICT="mirror"