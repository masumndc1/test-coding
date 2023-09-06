#!/usr/bin/env lua
-- lua object oriented programming

local Account = {
	balance = 0,
}

function Account:new(o)
	o = o or {}
	setmetatable(o, self)
	-- here self means the prototype table itself.
	-- therefore self means Account here.
	self.__index = self
	return o
end

function Account:deposit(v)
	self.balance = self.balance + v
	print(self.balance)
	return self.balance
end

function Account:withdraw(v)
	if v > self.balance then
		error("insufficient fund")
	end
	self.balance = self.balance - v
	print(self.balance)
	return self.balance
end

local SpecialAccount = Account:new()

function SpecialAccount:withdraw(v)
	if v - self.balance >= self:getlimit() then
		error("insufficient funds")
	else
		self.balance = self.balance - v
		print(self.balance)
		return self.balance
	end
end

function SpecialAccount:getlimit()
	return self.limit or 0
end

local s = SpecialAccount:new({ limit = 1000 })

s:deposit(100)
s:withdraw(1099)

print("------")
local a1 = Account:new()
a1:deposit(100)
a1:withdraw(50)

print("------")
local a2 = Account:new()
a2:deposit(200)
a2:withdraw(100)

-- privacy

local NewAccount = function(initialbalance)
	local self = { balance = initialbalance or 0 }
	local getbalance = function()
		return self.balance
	end
	local deposit = function(v)
		self.balance = self.balance + v
	end
	local withdraw = function(v)
		self.balance = self.balance - v
	end
	return {
		getbalance = getbalance,
		deposit = deposit,
		withdraw = withdraw,
	}
end

print("------")
local acc1 = NewAccount(200)
print(acc1.getbalance())
acc1.deposit(100)
print(acc1.getbalance())
acc1.withdraw(50)
print(acc1.getbalance())
