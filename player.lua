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

function Player:canMoveTo(x, y)
  local ht_here = self.map:heightAt(self.x, self.y)
  local ht_there = self.map:heightAt(x, y)

  if ht_there == -1 then
    return false
  end

  if ht_there > ht_here + 1 then
    return false
  end

  if self.map:tileAt(x, y) == images.WATER_BLOCK then
    return false
  end

  return true
end

function Player:moveSouth()
  if self:canMoveTo(self.x, self.y+1) then
    self.y = self.y + 1
  end
end

function Player:moveNorth()
  if self:canMoveTo(self.x, self.y-1) then
    self.y = self.y - 1
  end
end

function Player:moveEast()
  if self:canMoveTo(self.x+1, self.y) then
    self.x = self.x + 1
  end
  self.facing = 1
end

function Player:moveWest()
  if self:canMoveTo(self.x-1, self.y) then
    self.x = self.x - 1
  end
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