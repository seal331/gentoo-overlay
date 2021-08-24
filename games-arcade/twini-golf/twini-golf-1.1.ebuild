# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake toolchain-funcs

DESCRIPTION="Twini-Golf is an experimental mini golf game where you play on multiple golf courses at once, simultaneously controlling each ball."

HOMEPAGE="https://github.com/PolyMarsDev/Twini-Golf"

SRC_URI="https://github.com/seal331/${PN}/archive/${PV}-gentoo.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/Twini-Golf-${PV}-gentoo"

LICENSE="twinigolf"

DEPEND="media-libs/libsdl2 media-libs/sdl2-mixer media-libs/sdl2-image media-libs/sdl2-ttf"

BDEPEND=">=dev-util/cmake-3.10"

SLOT="0"

KEYWORDS="~amd64"

RESTRICT="mirror"

src_prepare() {
	cmake_src_prepare
	sed -i 's/splashbg.png/splashBg.png/g' src/main.cpp
}
