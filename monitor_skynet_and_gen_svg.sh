#/bin/sh
sudo stap mini_lua_bt.stp -p `pgrep -f "skynet.*"` -u > a.bt
./stackcollapse.lua a.bt >a.cbt
./flamegraph.pl a.cbt >skynet.svg
