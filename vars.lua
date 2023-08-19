#!/usr/bin/env lua

local vars = {}

vars.site = "www.google.com"
vars.num = 5
vars.nm_ping = 3
vars.os = "port"
vars.pkg = "htop"
vars.term = os.getenv("TERM")
vars.shell = os.getenv("SHELL")

return vars
