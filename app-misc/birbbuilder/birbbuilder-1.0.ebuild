# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

CHOST="i686-elf"
CTARGET="i686-elf"

inherit flag-o-matic

DESCRIPTION="BirbOS 2.0 ISO builder"
HOMEPAGE="https://github.com/seal331/birbbuilder"
SRC_URI="https://github.com/seal331/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"

KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ~ia64 ~mips ppc ppc64 ~s390 sparc x86"

RESTRICT="mirror"

DEPEND=">=sys-devel/crossdev-0.9.1 dev-lang/nasm sys-boot/grub:2 dev-libs/libisoburn sys-fs/mtools"

pkg_setup() {
	# check for right toolchain
	ebegin "Checking for i686-elf-gcc"
	if type -p i686-elf-gcc > /dev/null ; then
		eend 0
	else
		eend 1

		eerror
		eerror "Failed to locate 'i686-elf-gcc' in \$PATH. You can install an i686-ELF toolchain using:"
		eerror "  $ crossdev -s1 -t i686-elf"
		eerror
		die "i686-ELF toolchain not found"
	fi
}


src_install() {
	cd "${WORKDIR}" || die
	dodir /usr/src
	einfo ">>> Setting up sources..."
	mv "${WORKDIR}"/birbbuilder-1.0 "${ED%/}"/usr/src/birbos || die
	chmod +x "${ED%/}"/usr/src/birbos/birbbuilder || die
	dodir /usr/bin
	ln -s "${ED%/}"/usr/src/birbos/birbbuilder "${ED%/}"/usr/bin/birbbuilder
	einfo "All the tools necessary to compile BirbOS were installed. In order to run BirbOS, it's recommended to use app-emulation/qemu with the i386 QEMU_SOFTMMU target."
}
