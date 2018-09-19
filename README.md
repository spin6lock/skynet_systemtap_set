Introduction
============
[Skynet](https://github.com/cloudwu/skynet/) a lightweight online game framework with customize lua vm. The lua proto is in SharedProto. This script extract skynet's customize lua vm stack by systemtap. It can print logs to draw flamegraph.

Usage
=====
 ```shell
 #change the skynet bin source to your path, and add -g to 3rd/lua Makefile in skynet project
 sudo ./monitor_skynet_and_gen_svg.sh skynet_pid skynet_bin_path serviceid_in_decimal
 ```
 Then use [dump_lua_function](https://github.com/spin6lock/dump_lua_function) to convert filename:lineno to filename:func.
