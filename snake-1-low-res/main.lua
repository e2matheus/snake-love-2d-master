--[[
    Snake Love 2D
    Based on Snake 2D

    snake-1
    "Low-res"

    -- Main Program --

    Author: Eleazar Matheus
    eleazar.matt7@gmail.com
    
    Originally a variant of a game called Blockade, programmed by
    Gremlin in 1976, preloaded on Nokia mobiles phones in 1998.
    Features one snake, controlled by the player, surrounded by
    walls. The goal is to eat all the apples that show up on the
    screen at random locations, and earn points, until the score
    is maxed out. When the snake collides with the borders of the
    room or when it hits itself, it's game over.
    
    The difficulty ramps up as the snake gets bigger with every
    apple it eats.

    This version is built to have a resolution resembling the one
    from the arcade game Blockade, but in widescreen (16:9), for
    it to look better on modern systems.
]]

-- push is a library that offers a way to draw the game at a virtual
-- resolution, instead of however large the window is.

-- Used to provide a more retro aesthetic.
--
-- https://github.com/Ulydev/push
push = require 'push'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 512
VIRTUAL_HEIGHT = 288

FONT_HALF_HEIGHT_SMALL = 6

--[[
    Runs only once
    Used to initialize the game.
]]
function love.load()
    -- Apply nearest-neighbor filtering on upscaling and downscaling to
    -- prevent blurring of text and graphics
    love.graphics.setDefaultFilter('nearest', 'nearest')

    -- Initialize the virtual resolution, which will be rendered within
    -- the actual window no matter its dimensions.
    --
    -- Replace the love.window.setMode call from the last module
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

--[[
    Called by Love 2D after the update action ends
    Used to draw anything to the screen, even if it's not updated.
]]
function love.draw()
    -- Begin rendering at virtual resolution
    push:start()

    -- Use virtual width and height now for the text placement
    love.graphics.printf(
        'Welcome to Snake Love 2D!',                 -- text to render
        0,                                           -- X position (0 because it's centered based on width)
        VIRTUAL_HEIGHT / 2 - FONT_HALF_HEIGHT_SMALL,  -- Y position (halfway down the screen, )
        VIRTUAL_WIDTH,                                -- rectangle width in pixels (the entire screen here)
        'center')                                    -- alignment mode to the center of the given rectangle 
    
    -- End rendering at virtual resolution
    push:finish()
end
