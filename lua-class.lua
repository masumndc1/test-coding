#!/usr/bin/env lua

-- procedure
-- 1. create prototype
-- 2. create constructor
--    setmetatable(o, self)
--    self.__index = self
-- 3. create the methods
--
-- __index = t
-- __newindex = function(t,k,v)
--   t[k] = v

-- prototype
local account = {
	-- initial balance
	balance = 0,
}

-- constructor
function account:new(o)
	o = o or {}
	-- this self = account itself
	setmetatable(o, self)
	self.__index = self
	return o
end

function account:deposit(v)
	-- deposit some money
	self.balance = self.balance + v
	return self.balance
end

function account:withdraw(v)
	-- deposit some money
	if self.balance > v then
		self.balance = self.balance - v
		return self.balance
	else
		error("you want to draw more than your balance, in-sufficient balance")
	end
end

return account
-- print(a1:deposit(100))
