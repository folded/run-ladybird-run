require "images"
require "map"
require "player"

function love.load()
	player = Player:new {}

	map = Map:new {
		map = {
			'.`````````',
			'.~.```````',
			'.~.ssss``~',
			'.~.ss````~',
			'.~.ss```~~',
			'.~.ss```~~',
			'.~.ss```~~',
			'.~.ss```~~',
		},
		height = {
			'0000000000',
			'0000000000',
			'0003321000',
			'0003300000',
			'0003300000',
			'0003300000',
			'0002200000',
			'0001100000',
		}
	}

	player:setMap(map)
end


function love.keypressed(key, isrepeat)
	if key == 'w' then player:moveNorth() end
	if key == 's' then player:moveSouth() end
	if key == 'a' then player:moveWest()  end
	if key == 'd' then player:moveEast()  end
end


offset_x = 0
offset_y = 0

function love.draw()
	local px = offset_x + player:xPosition()
	local py = offset_y + player:yPosition()

	if px < 200 then
		offset_x = offset_x - (px - 200)
	end
	if py < 200 then
		offset_y = offset_y - (py - 200)
	end
	if px > 580 then
		offset_x = offset_x - (px - 580)
	end
	if py > 440 then
		offset_y = offset_y - (py - 440)
	end

	for y = 1, map.H do
		map:drawY(offset_x, offset_y, y)
		if player.y == y then
			player:draw(offset_x, offset_y)
		end
	end
end