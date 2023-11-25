#!/bin/bash

for DIR in 'packages' 'packages_local' 'agents' 'snmpwalks'; do
    rm -rfv $OMD_ROOT/var/check_mk/$DIR
    ln -sv $WORKSPACE/var/check_mk/$DIR $OMD_ROOT/var/check_mk/$DIR
done;

rm -rfv $OMD_ROOT/local
ln -sv $WORKSPACE/local $OMD_ROOT/local
source /omd/sites/cmk/.profile && echo 'cmkadmin' | /omd/sites/cmk/bin/cmk-passwd -i cmkadmin
