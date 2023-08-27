#!/usr/bin/env lua

local longest_line = {}

function longest_line.nm_line(file)
	local initial = 0
	local long_line = {}
	for line in io.lines(file) do
		if #line > initial then
			initial = #line
			table.insert(long_line, 1, line)
		end
	end

	return initial, long_line[1]
end

return longest_line
