require "images"

Map = {}
Map.__index = Map

function Map:new(o)
	o = o or {}
	setmetatable(o, self)

	o.width, o.height = 0, 0

	for _y,s in pairs(o.map) do
		o.width = math.max(o.width, string.len(s))
		o.height = o.height + 1
	end

	return o
end

function Map:draw(x, y)
	local _x, _y, s

	for _y = 1, self.height do
		for _x = 1, self.width do
			local ch = string.sub(self.map[_y], _x, _x)
			local tile = images.map[ch]
			if tile ~= nil then
				love.graphics.draw(tile.im, x + (_x-1) * 99, y + (_y-1) * 80 - 50)
			end
		end
	end
end