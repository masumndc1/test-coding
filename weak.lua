#!/usr/bin/env lua
-- example of week table

A = {}
B = {__mode = "k"}
setmetatable(A,B)          -- now A has week key from B
local key = {}
A[key] = 1
local key = {}
A[key] = 2
collectgarbage()
-- force a garbage collection cycle.
-- for weak keys, garbage collection will not clear
-- these keys.

for k, v in pairs(A) do print(v) end