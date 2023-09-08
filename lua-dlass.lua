#!/usr/bin/env lua

local class = require("lua-class")

-- modify parent class method
function class:withdraw(v)
	self.balance = self.balance + v
	return self.balance
end

-- adding new class method
function class:increment(v)
	self.balance = self.balance + self.balance * v
	return self.balance
end

return class
