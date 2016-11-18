

local water
local shader

function love.load()
    water = love.graphics.newImage('mask.jpeg')
    water:setWrap('repeat', 'repeat')

    shader = love.graphics.newShader('shader.glsl')
    shader:send('water', water)

    love.graphics.setShader(shader)
end

function love.update()
    shader:send('time', love.timer.getTime())
end

function love.keypressed(key)
    if key == 'q' then
        love.event.quit()
    end
end

function love.draw()
    love.graphics.setColor(100, 149, 237)
    love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(),
        love.graphics.getHeight())
end
