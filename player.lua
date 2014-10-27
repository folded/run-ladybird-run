require "images"

Player = {}
Player.__index = Player

function Player:new(o)
  o = o or {}
  setmetatable(o, self)

  return o
end

function Player:setMap(map)
  self.map = map

  self.x = 0
  self.y = 0
  self.facing = 1
end

function Player:moveSouth()
  self.y = self.y + 1
end

function Player:moveNorth()
  self.y = self.y - 1
end

function Player:moveEast()
  self.x = self.x + 1
  self.facing = 1
end

function Player:moveWest()
  self.x = self.x - 1
  self.facing = -1
end

function Player:draw(x, y)
  love.graphics.draw(images.PLAYER.im,
             self.x * 99 + 50,
             self.y * 80 + 30,
             0.0,
             self.facing,
             1,
             50,
             100)
end