images = {}

images.CHARACTER_BOY =           { ch = '1', im = love.graphics.newImage("images/Character Boy.png") }
images.CHARACTER_CAT_GIRL =      { ch = '2', im = love.graphics.newImage("images/Character Cat Girl.png") }
images.CHARACTER_HORN_GIRL =     { ch = '3', im = love.graphics.newImage("images/Character Horn Girl.png") }
images.CHARACTER_PINK_GIRL =     { ch = '4', im = love.graphics.newImage("images/Character Pink Girl.png") }
images.CHARACTER_PRINCESS_GIRL = { ch = '5', im = love.graphics.newImage("images/Character Princess Girl.png") }
images.PLAYER =                  { ch = '@', im = love.graphics.newImage("images/Enemy Bug.png") }

images.CHEST_CLOSED =            { ch = '=', im = love.graphics.newImage("images/Chest Closed.png") }
images.CHEST_LID =               { ch = '-', im = love.graphics.newImage("images/Chest Lid.png") }
images.CHEST_OPEN =              { ch = '+', im = love.graphics.newImage("images/Chest Open.png") }

images.GEM_BLUE =                { ch = 'O', im = love.graphics.newImage("images/Gem Blue.png") }
images.GEM_GREEN =               { ch = 'P', im = love.graphics.newImage("images/Gem Green.png") }
images.GEM_ORANGE =              { ch = 'Q', im = love.graphics.newImage("images/Gem Orange.png") }

images.SELECTOR =                { ch = '_', im = love.graphics.newImage("images/Selector.png") }
images.STAR =                    { ch = '*', im = love.graphics.newImage("images/Star.png") }
images.HEART =                   { ch = '$', im = love.graphics.newImage("images/Heart.png") }
images.KEY =                     { ch = '!', im = love.graphics.newImage("images/Key.png") }

images.DOOR_TALL_CLOSED =        { ch = '[', im = love.graphics.newImage("images/Door Tall Closed.png") }
images.DOOR_TALL_OPEN =          { ch = ']', im = love.graphics.newImage("images/Door Tall Open.png") }

images.BROWN_BLOCK =             { ch = '?', im = love.graphics.newImage("images/Brown Block.png") }
images.DIRT_BLOCK =              { ch = '.', im = love.graphics.newImage("images/Dirt Block.png") }
images.GRASS_BLOCK =             { ch = '`', im = love.graphics.newImage("images/Grass Block.png") }
images.PLAIN_BLOCK =             { ch = ':', im = love.graphics.newImage("images/Plain Block.png") }
images.STONE_BLOCK =             { ch = 's', im = love.graphics.newImage("images/Stone Block.png") }
images.STONE_BLOCK_TALL =        { ch = 'S', im = love.graphics.newImage("images/Stone Block Tall.png") }
images.TREE_SHORT =              { ch = 't', im = love.graphics.newImage("images/Tree Short.png") }
images.TREE_TALL =               { ch = 'T', im = love.graphics.newImage("images/Tree Tall.png") }
images.TREE_UGLY =               { ch = '|', im = love.graphics.newImage("images/Tree Ugly.png") }
images.WALL_BLOCK_TALL =         { ch = '#', im = love.graphics.newImage("images/Wall Block Tall.png") }
images.WALL_BLOCK =              { ch = 'w', im = love.graphics.newImage("images/Wall Block.png") }
images.WATER_BLOCK =             { ch = '~', im = love.graphics.newImage("images/Water Block.png") }
images.WOOD_BLOCK =              { ch = 'W', im = love.graphics.newImage("images/Wood Block.png") }
images.ROCK =                    { ch = '&', im = love.graphics.newImage("images/Rock.png") }
images.WINDOW_TALL =             { ch = '{', im = love.graphics.newImage("images/Window Tall.png") }

images.RAMP_EAST =               { ch = '>', im = love.graphics.newImage("images/Ramp East.png") }
images.RAMP_NORTH =              { ch = '^', im = love.graphics.newImage("images/Ramp North.png") }
images.RAMP_SOUTH =              { ch = 'V', im = love.graphics.newImage("images/Ramp South.png") }
images.RAMP_WEST =               { ch = '<', im = love.graphics.newImage("images/Ramp West.png") }

images.ROOF_EAST =               {           im = love.graphics.newImage("images/Roof East.png") }
images.ROOF_NORTH_EAST =         {           im = love.graphics.newImage("images/Roof North East.png") }
images.ROOF_NORTH_WEST =         {           im = love.graphics.newImage("images/Roof North West.png") }
images.ROOF_NORTH =              {           im = love.graphics.newImage("images/Roof North.png") }
images.ROOF_SOUTH_EAST =         {           im = love.graphics.newImage("images/Roof South East.png") }
images.ROOF_SOUTH_WEST =         {           im = love.graphics.newImage("images/Roof South West.png") }
images.ROOF_SOUTH =              {           im = love.graphics.newImage("images/Roof South.png") }
images.ROOF_WEST =               {           im = love.graphics.newImage("images/Roof West.png") }

images.SHADOW_EAST =             {           im = love.graphics.newImage("images/Shadow East.png") }
images.SHADOW_NORTH_EAST =       {           im = love.graphics.newImage("images/Shadow North East.png") }
images.SHADOW_NORTH_WEST =       {           im = love.graphics.newImage("images/Shadow North West.png") }
images.SHADOW_NORTH =            {           im = love.graphics.newImage("images/Shadow North.png") }
images.SHADOW_SIDE_WEST =        {           im = love.graphics.newImage("images/Shadow Side West.png") }
images.SHADOW_SOUTH_EAST =       {           im = love.graphics.newImage("images/Shadow South East.png") }
images.SHADOW_SOUTH_WEST =       {           im = love.graphics.newImage("images/Shadow South West.png") }
images.SHADOW_SOUTH =            {           im = love.graphics.newImage("images/Shadow South.png") }
images.SHADOW_WEST =             {           im = love.graphics.newImage("images/Shadow West.png") }

images.SPEECHBUBBLE =            {           im = love.graphics.newImage("images/SpeechBubble.png") }

local k, v
local map = {}

for k, v in pairs(images) do
	if v.ch ~= nil and v.im ~= nil then
		map[v.ch] = v
	end
end

images.map = map
