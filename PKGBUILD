# Maintainer: ProfessorKaos64 <mdeguzis@gmail.com>
# Contributor: zer0def <zer0def on freenode>
# Mod: http://www.moddb.com/mods/brutal-doom
pkgname=brutal-doom
pkgver=21.2019.03.01
pkgrel=1
pkgdesc="Brutal Doom via the GzDoom engine."
arch=(any)
url="http://www.moddb.com/mods/brutal-doom"
license=('GPL3')
depends=('gzdoom')
optdepends=('doomseeker')
makedepends=('curl' 'tidy' 'xmlstarlet')
source=(
	'bd21RC8.zip::https://www.moddb.com/downloads/start/95667'
	'DoomMetalVol4.zip::https://www.moddb.com/downloads/start/61238'
	'gzdoom.ini'
	'brutal-doom'
	'brutal-doom.install'
	'brutal-doom.png'
	'brutal-doom.desktop'
)
md5sums=(
	'8fb8fd3f1896a0212387937d3aa6f190'
	'7b299f26145a379028ddab869544fea3'
	'b9546fe4ef25d0c8c18ae18e3e853924'
	'e5097664c5be7b3895df588e086c6351'
	'f0b8b097b26db054cc1fd70c7c3d83e7'
	'bf85967c850adba3498cdba580a4e081'
	'3ab16e25014b173b5c9d09a4df2d167b'
)
install=$pkgname.install
DLAGENTS=("https::/bin/sh $(pwd)/moddb-download.sh %o %u")

package() {

	install -d "$pkgdir/usr/bin"
	install -d "$pkgdir/usr/share/games/$pkgname"
	install -d "$pkgdir/usr/share/pixmaps"
	install -d "$pkgdir/usr/share/applications"

	msg2 "Installing launcher"
	install -m755 "brutal-doom" "$pkgdir/usr/bin/brutal-doom"

	msg2 "Installing bd21rc8.pk3 and DoomMetalVol4.wad..."
	install -m644 "$srcdir/bd21RC8.pk3" "$pkgdir/usr/share/games/$pkgname/bd21rc8.pk3"
	install -m644 "$srcdir/DoomMetalVol4.wad" "$pkgdir/usr/share/games/$pkgname/DoomMetalVol4.wad"
	install -m644 "$srcdir/BRUTAL DOOM MANUAL.rtf" "$pkgdir/usr/share/games/$pkgname/manual.rtf"
	install -m644 "$srcdir/brutal-doom.png" "$pkgdir/usr/share/pixmaps/brutal-doom.png"
	install -m644 "$srcdir/brutal-doom.desktop" "$pkgdir/usr/share/applications/brutal-doom.desktop"

	msg2 "Installing configuration files..."
	install -m777 "gzdoom.ini" "$pkgdir/usr/share/games/$pkgname/gzdoom.ini"
}
