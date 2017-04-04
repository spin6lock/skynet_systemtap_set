#/bin/sh
./sample-bt -p `pgrep -f "skynet.*game"` -t 5 -u > a.bt
./stackcollapse-stap.pl a.bt >a.cbt
./flamegraph.pl a.cbt >skynet.svg
