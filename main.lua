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

function love.draw()
	map:draw(0, 0)
	player:draw(0, 0)
	--love.graphics.draw(images.SPEECHBUBBLE.im,  80, 65)
end