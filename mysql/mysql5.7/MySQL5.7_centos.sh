yum install -y gcc gcc-c++ glibc glibc-devel ncurses-devel zlib zlib-devel bison bison-devel libaio-devel cmake libtool make autoconf

cmake .. -DBUILD_CONFIG=mysql_release -DINSTALL_LAYOUT=STANDALONE -DCMAKE_BUILD_TYPE=RelWithDebInfo -DENABLE_DTRACE=OFF -DWITH_EMBEDDED_SERVER=OFF -DWITH_INNODB_MEMCACHED=ON -DWITH_SSL=bundled -DWITH_ZLIB=system -DWITH_PAM=ON -DCMAKE_INSTALL_PREFIX=/var/mysql/ -DINSTALL_PLUGINDIR="/var/mysql/lib/plugin" -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_EDITLINE=bundled -DFEATURE_SET=community -DCOMPILATION_COMMENT="MySQL Server (GPL)" -DWITH_DEBUG=OFF -DWITH_BOOST=../boost/boost_1_59_0/

make && make install
