local Color = {
    red = 0,
    green = 0,
    blue = 0,
}

function Color:new(red, green, blue)
    local o = {red, green, blue}
    setmetatable(o, self)
    self.__index = self

    self.red   = red
    self.green = green
    self.blue  = blue
    return o
end

local function decimal_to_hex(number)
    return string.format('%x', number)
end

-- Lua prints out input hexidecimal numbers in decimal, so all you need to do is
-- just stick concatenate '0x' and your input hexadecimal number
local function hex_to_decimal(number)
    return tonumber('0x' .. number)
end

function Color:to_html()
    -- While this isn't elegant, it saves the computer time on doing loops
    -- and stuff. I don't think we're getting anymore primary colors, are we?
    local r = decimal_to_hex(self.red)
    local g = decimal_to_hex(self.green)
    local b = decimal_to_hex(self.blue)

    return r .. g .. b
end

function Color:from_html(color)
    local length_of_color = 3
    local rgb = {}
    for i = 1,length_of_color do
        table.insert(rgb, hex_to_decimal(
            color:sub(2 * i - 1, 2 * i) ) )
    end
    
    return Color:new(rgb[1], rgb[2], rgb[3])
end
