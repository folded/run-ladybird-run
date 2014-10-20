require "images"
require "map"

function love.load()
	map = Map:new {
		map = {
			"...##",
			".~.#.",
			"...##"
		}
	}
end

function love.draw()
	map:draw(0, 0)
	--love.graphics.draw(images.CHARACTER_BOY.im, 25, 125)
	--love.graphics.draw(images.SPEECHBUBBLE.im,  80, 65)
end