#/bin/sh
if [ "$1" = "" ] | [ "$2" = "" ]; then
    echo "usage: monitor pid skynet_bin_path"
    exit 1
fi
sudo stap mini_lua_bt.stp --skip-badvars -x $1 -u $2 > a.bt
lua stackcollapse.lua a.bt >a.cbt
./flamegraph.pl a.cbt >skynet.svg
