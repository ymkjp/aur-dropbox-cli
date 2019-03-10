# Maintainer: Fredy García <frealgagu at gmail dot com>
# Contributor: Joel Teichroeb <joel@teichroeb.net>
# Contributor: Matthias Maennich < arch .at. maennich.net >
# Contributor: bruce < b_a_g99 .at. hotmail.com >
# Contributor: carstene1ns <arch carsten-teibes de>
# Contributor: Kenta Yamamoto <ymkjp at jaist dot ac dot jp>

# Maintenance Procedure
# 1. Download "dropbox.py" from https://linux.dropbox.com/packages/ to your local machine, and verify its content
# 2. Execute `sha256sum ~/Downloads/dropbox.py`
# 3. Update "pkgver" and "sha256sums" here accordingly
pkgname=dropbox-cli
pkgver="2019.03.08"
pkgrel=1
pkgdesc="Command line interface for Dropbox"
arch=("any")
url="http://www.${pkgname%-cli}.com"
license=("GPL")
depends=("${pkgname%-cli}" "python")
install="${pkgname}.install"
source=("${pkgname}-${pkgver}.py::https://linux.${pkgname%-cli}.com/packages/${pkgname%-cli}.py")
sha256sums=("6a0288ca53c65c525e7efd30a3b89e2219ac41d1a66fe8e8ac64c3320de69929")

prepare() {
  cp -L "${srcdir}/${pkgname}-${pkgver}.py" "${srcdir}/${pkgname}.py"
}

package() {
  install -dm755 "${pkgdir}/usr/bin"
  install -Dm755 "${srcdir}/${pkgname}.py" "${pkgdir}/usr/share/${pkgname}/${pkgname}.py"
  ln -s "/usr/share/${pkgname}/${pkgname}.py" "${pkgdir}/usr/bin/${pkgname}"
}
