# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake toolchain-funcs git-r3

DESCRIPTION="SCO Xenix copy protection analysis tool"

HOMEPAGE="https://github.com/seal331/brandy"

EGIT_REPO_URI="https://github.com/seal331/brandy"

LICENSE="public-domain"

BDEPEND=">=dev-util/cmake-3.10"

SLOT="0"

KEYWORDS="~amd64"

RESTRICT="mirror"
