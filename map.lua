require "images"

Map = {}
Map.__index = Map

function Map:new(o)
	o = o or {}
	setmetatable(o, self)

	o.W, o.H = 0, 0

	for _y,s in pairs(o.map) do
		o.W = math.max(o.W, string.len(s))
		o.H = o.H + 1
	end

	return o
end

function Map:tileAt(x, y)
	return images.map[self.map[y]:sub(x, x)]
end

function Map:heightAt(x, y)
	if x < 1 or y < 1 or x > self.W or y > self.H then
		return -1
	end
	local ht = self.height[y]:sub(x, x)
	ht = tonumber(ht)
	if ht == nil then
		ht = -1
	end
	return ht
end

function Map:drawTile(tile, x, y, ox, oy, ht, is_top)
	local tx = ox + (x - 1) * 99
	local ty = oy + (y - 1) * 80 - 50 - ht * 40

	if is_top then
		if self:heightAt(x, y-1) < ht-1 then
			love.graphics.draw(images.SHADOW_SOUTH.im, tx, ty - 40)
		end
	end

	love.graphics.draw(tile.im, tx, ty)

	if is_top then
		if self:heightAt(x+1, y+1) > ht and self:heightAt(x+1, y) <= ht then
			love.graphics.draw(images.SHADOW_SOUTH_EAST.im, tx, ty)
		end
		if self:heightAt(x-1, y+1) > ht and self:heightAt(x-1, y) <= ht and self:heightAt(x, y-1) <= ht then
			love.graphics.draw(images.SHADOW_SOUTH_WEST.im, tx, ty)
		end

		if self:heightAt(x+1, y) > ht then
			love.graphics.draw(images.SHADOW_EAST.im, tx, ty)
		end
		if self:heightAt(x-1, y) > ht then
			love.graphics.draw(images.SHADOW_WEST.im, tx, ty)
		end

		if self:heightAt(x+1, y-1) > ht and self:heightAt(x, y-1) <= ht then
			love.graphics.draw(images.SHADOW_NORTH_EAST.im, tx, ty)
		end
		if self:heightAt(x-1, y-1) > ht and self:heightAt(x, y-1) <= ht and self:heightAt(x-1, y) <= ht then
			love.graphics.draw(images.SHADOW_NORTH_WEST.im, tx, ty)
		end

		if self:heightAt(x, y-1) > ht then
			love.graphics.draw(images.SHADOW_NORTH.im, tx, ty)
		end
		if self:heightAt(x, y+1) > ht then
			love.graphics.draw(images.SHADOW_SOUTH.im, tx, ty)
		end
	end

	if self:heightAt(x-1, y+1) >= ht then
		love.graphics.draw(images.SHADOW_SIDE_WEST.im, tx, ty)
	end

end

function Map:drawY(x, y, _y)
	for _x = 1, self.W do
		local ht = self:heightAt(_x, _y)
		local tile = self:tileAt(_x, _y)
		if tile ~= nil then

			for _ht = 0, ht-1 do
				self:drawTile(images.STONE_BLOCK, _x, _y, x, y, _ht, false)
			end

			self:drawTile(tile, _x, _y, x, y, ht, true)
		end
	end
end

function Map:draw(x, y)
	local _x, _y, s

	for _y = 1, self.H do
		self:drawY(x, y, _y)
	end
end