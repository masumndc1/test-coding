#!/usr/bin/env lua

local requests = require('requests')
local response = requests.get('http://www.debian.org')

print(response.status_code)
