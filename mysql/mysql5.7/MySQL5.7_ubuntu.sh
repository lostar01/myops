apt install cmake libncurses5-dev lib64z1-dev libaio-dev libbison-dev libprotobuf-dev

cmake .. -DBUILD_CONFIG=mysql_release -DINSTALL_LAYOUT=STANDALONE -DCMAKE_BUILD_TYPE=RelWithDebInfo -DENABLE_DTRACE=OFF -DWITH_EMBEDDED_SERVER=OFF -DWITH_INNODB_MEMCACHED=ON -DWITH_SSL=bundled -DWITH_ZLIB=system -DWITH_PAM=ON -DCMAKE_INSTALL_PREFIX=/usr/local/mysql/ -DINSTALL_PLUGINDIR="/usr/local/mysql/lib/plugin" -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_EDITLINE=bundled -DFEATURE_SET=community -DCOMPILATION_COMMENT="MySQL Server (GPL)" -DWITH_DEBUG=OFF -DWITH_BOOST=../boost/boost_1_59_0/

make && make install
