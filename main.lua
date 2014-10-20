require "images"
require "map"

function love.load()
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
		}
	}
end

playerX = 1
playerY = 1
playerXScale = 1

function love.keypressed(key, isrepeat)
	if key == 'w' then playerY = playerY - 1 end
	if key == 's' then playerY = playerY + 1 end
	if key == 'a' then
		playerX = playerX - 1
		playerXScale = -1
	end
	if key == 'd' then
		playerX = playerX + 1
		playerXScale = 1
	end
end

function love.draw()
	map:draw(0, 0)
	love.graphics.draw(images.PLAYER.im,
					   playerX * 99 + 50,
					   playerY * 80 + 30,
					   0.0,
					   playerXScale,
					   1,
					   50,
					   100)
	--love.graphics.draw(images.SPEECHBUBBLE.im,  80, 65)
end