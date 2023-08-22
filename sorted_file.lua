#!/usr/bin/env lua

local sorted_file = function(file)
	local srtd_file = {}

	-- show file content before sorted
	local fl = assert(io.open(file, "r"))
	print(fl:read("a"))

	-- put every line in this empty table
	for line in io.lines(file) do
		srtd_file[#srtd_file + 1] = line
	end

	-- now sort the table
	table.sort(srtd_file)

	-- now list the sorted table content
	for _, v in pairs(srtd_file) do
		print(v)
	end
end

local main = function()
	if arg[1] then
		sorted_file(arg[1])
	end
end

main()
