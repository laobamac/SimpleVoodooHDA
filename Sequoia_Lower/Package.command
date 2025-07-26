#!/bin/sh
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
rm -rf ./FileUse
rm -rf ./SimpleVoodooHDA.pkg
echo "Create the Packages with pkgbuild/productbuild"
sleep 1
pkgbuild --root ./Package/SimpleVoodooHDA --scripts ./Package/scripts --identifier com.SimpleVoodooHDA --version 1 --install-location /Private/tmp/ ./SimpleVoodooHDA.pkg
productbuild --distribution  ./Package/Distribution.xml --resources ./Package/Resources --package-path ./SimpleVoodooHDA.pkg ./Simple-VoodooHDA-Sequoia-Lower.pkg
rm -rf ./SimpleVoodooHDA.pkg
echo "完成"
pkgutil --expand ./Simple-VoodooHDA-Sequoia-Lower.pkg ./FileUse
Sleep 1
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "打包完成!   "
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
Sleep 2
rm -rf ./FileUse/Distribution
Rm -rf ./FileUse/Resources
Sleep 1
cp -rp ./package/FILES/Distribution ./FileUse
cp -rp ./package/FILES/Resources ./FileUse
Sleep 1
pkgutil --flatten ./FileUse ./Simple-VoodooHDA-Sequoia-Lower.pkg
Sleep 1
rm -rf ./FileUse
./package/FILES/seticon -d ./package/Pics/AppIcon.icns ./Simple-VoodooHDA-Sequoia-Lower.pkg
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "Simple-VoodooHDA-Sequoia-Lower.pkg
编译完成!   "
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "