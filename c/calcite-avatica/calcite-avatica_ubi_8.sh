# -----------------------------------------------------------------------------
#
# Package       : calcite-avatica
# Version       : master(945d06c2a)
# Source repo   : https://github.com/apache/calcite-avatica.git
# Tested on     : RHEL 8.3
# Script License: Apache License, Version 2 or later
# Maintainer    : sachin.kakatkar@ibm.com
#
# Disclaimer: This script has been tested in root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
PACKAGE_NAME=calcite-avatica
PACKAGE_VERSION=945d06c2a
PACKAGE_URL=https://github.com/apache/calcite-avatica
dnf install git -y
dnf install maven
mkdir test
cd test
git clone https://github.com/apache/calcite-avatica.git
cd $PACKAGE_NAME
git checkout $PACKAGE_VERSION
sed -i 's/protobuf.version=3.6.1/protobuf.version=3.7.0/g' gradle.properties
./gradlew build

