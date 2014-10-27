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

  self.x = 1
  self.y = 1
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

function Player:xPosition()
  return self.x * 99 - 49
end

function Player:height()
  local ht = self.map:heightAt(self.x, self.y)
  return ht
end

function Player:yPosition()
  local ht = self.map:heightAt(self.x, self.y)
  return self.y * 80 - 62 - ht * 40
end

function Player:draw(x, y)
  love.graphics.draw(images.PLAYER.im,
                     x + self:xPosition(),
                     y + self:yPosition(),
                     0.0,
                     self.facing,
                     1,
                     50,
                     100)
end