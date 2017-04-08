Introduction
============
[Skynet](https://github.com/cloudwu/skynet/) a lightweight online game framework with customize lua vm. The lua proto is in SharedProto. This script extract skynet's customize lua vm stack by systemtap. It can print logs to draw flamegraph.

Usage
=====
 ```shell
 change the skynet bin source to your path, and add -g to 3rd/lua Makefile in skynet project
 # stap mini_lua_bt.stp
