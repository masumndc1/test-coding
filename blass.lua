#!/usr/bin/env lua

local blass = require("dlass")

local a1 = blass:new({
	balance = 1000,
})

print(a1:withdraw(100))
