-- This is bad code, this is PROTOTYPE COOOOODE
_ = {}
keys = {}
local state = "battle"
require('states.battle')
local canvas, canvas_offset_x, canvas_offset_y, canvas_scale
local resolution_x = 240
local resolution_y = 160

function ichor(f, a)
  local s = _[state]
  if(s[f]) then
    s[f](s, a)
  end
end

function love.load()
  love.window.setMode(480, 320, {resizable=true})
  canvas = love.graphics.newCanvas(460, 240)
  canvas:setFilter('nearest','nearest',0,0)
  love.resize()
end

function love.resize()
  local w, h = love.graphics.getDimensions()
  scale_x = w/resolution_x
  scale_y = h/resolution_y
  canvas_scale = math.min(scale_x, scale_y)
  actual_x = resolution_x * canvas_scale
  actual_y = resolution_y * canvas_scale
  canvas_offset_x = (w-actual_x)/2
  canvas_offset_y = (h-actual_y)/2
end

function love.draw()
    love.graphics.setCanvas(canvas)
    love.graphics.setColor(255,0,0)
    love.graphics.rectangle("fill", 0, 0, resolution_x, resolution_y)
    ichor("draw")
    love.graphics.setCanvas()
    love.graphics.draw(canvas, canvas_offset_x, canvas_offset_y, 0, canvas_scale, canvas_scale)
end

function love.keypressed(key)
  keys[key] = true
end

function love.keyreleased(key)
  keys[key] = false
end
