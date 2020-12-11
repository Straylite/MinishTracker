client.SetGameExtraPadding(0,0,144,56)

local minutes = 2
local t = 0
local ft_c = os.date("%b%d-(%Y) - %H_%M_%S")
savestate.save("autosaves//backup ".. ft_c .. ".state")

item_list = {
    {0x02002B32, 0x04, 15*0, 183, 15, 15, 15*0 , 183},             -- Sword
    {0x02002B32, 0x10, 15*1, 183, 15, 15, 15*1 , 183},              -- Sword
    {0x02002B32, 0x40, 15*2, 183, 15, 15, 15*2 , 183},             -- Sword
    {0x02002B33, 0x01, 15*3, 183, 15, 15, 15*3 , 183},             -- Sword
    {0x02002B33, 0x10, 15*4, 183, 15, 15, 15*4 , 183},             -- Sword
    {0x02002B33, 0x40, 15*0, 200, 15, 15, 15*0, 200},               -- Bomb
    {0x02002B34, 0x01, 15*1, 200, 15, 15, 15*1, 200},              -- Bomb
    {0x02002B34, 0x4, 32, 200, 15, 15, 32, 200},               -- Bow
    {0x02002B34, 0x10, 47, 200, 15, 15, 47, 200},              -- Bow
    {0x02002B34, 0x40, 64, 200, 15, 15, 64, 200},           -- Boomerang
    {0x02002B35, 0x01, 79, 200, 15, 15, 79, 200},           -- Boomerang
    {0x02002B35, 0x04, 96, 200, 15, 15, 96, 200},       -- Shield
    {0x02002B35, 0x10, 111, 200, 15, 15, 111, 200},      -- Shield
    {0x02002B35, 0x40, 128, 200, 15, 15, 128, 200},         -- Lantern
    {0x02002B36, 0x04, 145, 200, 15, 15, 145, 200},         -- Gust Jar
    {0x02002B36, 0x10, 77, 183, 15, 15, 77, 183},       -- Cane
    {0x02002B36, 0x40, 94, 183, 15, 15, 94, 183},       -- Mitts
    {0x02002B37, 0x01, 111, 183, 15, 15, 111, 183},       -- Cape
    {0x02002B37, 0x04, 128, 183, 15, 15, 128, 183},       -- Boots
    {0x02002B37, 0x40, 145, 183, 15, 15, 145, 183},       -- Ocarina

    -- Scrolls
    {0x02002B44, 0x01, 0, 166, 16, 16, 0 , 166},
    {0x02002B45, 0x01, 17, 166, 16, 16, 17*1 , 166},
    {0x02002B44, 0x10, 17*2, 166, 16, 16, 17*2 , 166},
    {0x02002B45, 0x40, 17*3, 166, 16, 16, 17*3 , 166},
    {0x02002B44, 0x40, 17*4, 166, 16, 16, 17*4 , 166},
    {0x02002B44, 0x04, 17*5, 166, 16, 16, 17*5 , 166},
    {0x02002B45, 0x10, 17*6, 166, 16, 16, 17*6 , 166},
    {0x02002B45, 0x04, 17*7, 166, 16, 16, 17*7 , 166},

    -- Extra Scrolls
    {0x02002B4F, 0x01,  136, 166, 17, 16, 136 , 166},
    {0x02002B4F, 0x04,  153, 166, 21, 16, 153 , 166},
    {0x02002B4E, 0x40,  174, 166, 20, 16, 174 , 166},

    -- Bottles
    {0x02002B39, 0x01, 162, 183, 15, 15, 162, 183},
    {0x02002B39, 0x04, 179, 183, 15, 15, 179, 183},
    {0x02002B39, 0x10, 162, 200, 15, 15, 162, 200},
    {0x02002B39, 0x40, 179, 200, 15, 15, 179, 200},

    -- Elements
    {0x02002B42, 0x01, 200, 183, 15, 15, 200, 183},
    {0x02002B42, 0x04, 217, 183, 15, 15, 217, 183},
    {0x02002B42, 0x10, 200, 200, 15, 15, 200, 200},
    {0x02002B42, 0x40, 217, 200, 15, 15, 217, 200},

    --Flippers/Grip Ring/Bracelets
    {0x02002B43, 0x01, 238, 183, 15, 15, 238, 183},
    {0x02002B43, 0x04, 255, 183, 15, 15, 255, 183},
    {0x02002B43, 0x10, 272, 183, 15, 15, 272, 183},

    -- Bosses
    {0x02002C9C, 0x04, 289, 162, 31, 28, 289, 162},
    {0x02002C9C, 0x08, 320, 162, 29, 28, 320, 162},
    {0x02002C9C, 0x20, 349, 190, 29, 28, 349, 190},
    {0x02002C9C, 0x40, 320, 190, 29, 28, 320, 190},
    {0x02002D72, 0x02, 349, 162, 29, 28, 349, 162},
    {0x02002D8D, 0x01, 289, 190, 31, 28, 289, 190}
}

elements = {
    {0x08128699, 0x0812869A, "Earth Element"    ,241},
    {0x081286A1, 0x081286A2, "Fire Element"     ,258},
    {0x081286B1, 0x081286B2, "Water Element"    ,275},
    {0x081286A9, 0x081286AA, "Wind Element"     ,292}
}

ele_locations = {
    {0xB2, 0x7A, "Deepwood Shrine"      , 270, 103}, -- Deepwood Shrine
    {0x3B, 0x1B, "Cave of Flames "      , 318, 103}, -- Cave of Flames 
    {0x4B, 0x77, "Fortress of Winds"    , 365, 103}, -- Fortress of Winds
    {0xB5, 0x4B, "Temple of Droplets"   , 270, 142}, -- Temple of Droplets
    {0x5A, 0x15, "Graveyard"            , 318, 142}, -- Graveyard
    {0xB5, 0x1B, "Palace of Winds"      , 365, 142} -- Palace of Winds
}

kinstone_types = {
    {0x65, 0, 24, 270, 2},
    {0x6A, 26, 24, 296, 2},
    {0x6D, 52, 24, 322, 2}
}

key_table = {
    {271,91},
    {319,91},
    {366,91},
    {271,130},
    {366,130},
    {243,36},
    {319,130}
}

boss_key_positions = {
    {242,83},
    {289,83},
    {337,83},
    {242,122},
    {337,122},
    {242,45}
}

books_val = {
    {0x02002B40, 0x04, 238,200},
    {0x02002B40, 0x10, 255,200},
    {0x02002B40, 0x40, 272,200}
}

local socket = require('socket.core')

while true do

    local ft = os.date("%b%d-(%Y) - %H_%M_%S")
    t = t + 1
    if t > minutes*(60*60) then savestate.save("autosaves//backup ".. ft .. ".state") t = 0 end

    gui.drawImage("img//background.png",0,0)

    for i=1,#item_list do
        local addr,val, regionX,regionY,crop_size_X,crop_size_Y, renderX,renderY = unpack(item_list[i])
        if ((bit.band(memory.readbyte(addr), val) == val)) then 
            gui.drawImageRegion("img//foreground.png", regionX,regionY,crop_size_X,crop_size_Y, renderX,renderY)
        end
    end

    for e=1,#elements do
        local element_item_x, element_item_y, element_string, crop_region = unpack(elements[e])
        for el=1,#ele_locations do
            local ele_x, ele_y, string, placex, placey = unpack(ele_locations[el])
                if memory.readbyte(element_item_x) == ele_x and memory.readbyte(element_item_y) == ele_y then
                    gui.drawImageRegion("img//foreground.png", crop_region,64, 16,16, placex, placey)
                end
        end
    end

    for heart_container=0,3 do
        if memory.readbyte(0x02002AE9) == heart_container then
            gui.drawImageRegion("img//foreground.png", 26*heart_container,0, 26,24, 242, 2)
        end
    end

    for slots=1,12 do
        for k=1,#kinstone_types do
            local value, regionx, regiony, renderx, rendery = unpack(kinstone_types[k])
            local testing = math.floor(memory.readbyte(0x02002B6B+slots-1)/10)
            local testing2 = memory.readbyte(0x02002B6B+slots-1)-(testing*10)

            if memory.readbyte(0x02002B58+slots-1) == value then 
                gui.drawImageRegion("img//foreground.png", regionx,regiony, 26,24, renderx, rendery)
                
                gui.drawImageRegion("img//foreground.png", 0+6*testing,49, 5,7, 0+ renderx+14, rendery+17)
                gui.drawImageRegion("img//foreground.png", 0+6*testing2,49, 5,7, 5+renderx+14, rendery+17)
            end
        end
    end


    for key_addr=1,#key_table do
        local key_pos_x, key_pos_y = unpack(key_table[key_addr])
        local testing = math.floor(memory.readbyte(0x02002E9D+key_addr-1)/10)
        local testing2 = memory.readbyte(0x02002E9D+key_addr-1)-(testing*10)

        gui.drawImageRegion("img//foreground.png", 0+6*testing,49, 5,7, 0+key_pos_x, key_pos_y)
        gui.drawImageRegion("img//foreground.png", 0+6*testing2,49, 5,7, 5+key_pos_x, key_pos_y)
    end

    for bv=1,#boss_key_positions do
        local x,y = unpack(boss_key_positions[bv])
        if ((bit.band(memory.readbyte(0x02002EAD+bv-1), 0x4) == 0x4)) then 
            gui.drawImageRegion("img//foreground.png", 0,56, 16,16, x, y)
        end
    end

    -- Wallet
    gui.drawImageRegion("img//foreground.png", 0+14*memory.readbyte(0x02002AE8),72, 14,16, 349, 3)

    --Jabber Nut
    if ((bit.band(memory.readbyte(0x02002B48), 0x40) == 0x40)) then
        gui.drawImageRegion("img//foreground.png", 0,88, 13,15, 368, 3)
    end

     -- Mushroom
     if ((bit.band(memory.readbyte(0x02002B40), 0x01) == 0x1)) then
        gui.drawImageRegion("img//foreground.png", 0,103,16,16, 200, 162)
    end   

    -- Tingle
    if ((bit.band(memory.readbyte(0x02002B41), 0x04) == 0x04)) then
        gui.drawImageRegion("img//foreground.png", 16,103, 16,16, 217, 162)
    end

    -- Carlov
    if ((bit.band(memory.readbyte(0x02002B41), 0x10) == 0x10)) then
        gui.drawImageRegion("img//foreground.png", 0,119, 20,16, 234, 162)
    end

    -- Lon Lon
    if ((bit.band(memory.readbyte(0x02002CE5), 0x20) == 0x20)) then
        gui.drawImageRegion("img//foreground.png", 32,103, 16,16, 255, 162)
    end       

    -- Graveyard Key
    if ((bit.band(memory.readbyte(0x02002B41), 0x01) == 0x01)) then
        gui.drawImageRegion("img//foreground.png", 48,103, 16,16, 272, 162)
    end

    -- Books
    for book=1,#books_val do
        local addr, val,x,y = unpack(books_val[book])
        if ((bit.band(memory.readbyte(addr), val) == val)) then
            gui.drawImageRegion("img//foreground.png", x,200, 16,16, x, 200)
        end
    end
    
    -- Graveyard//King
    if ((bit.band(memory.readbyte(0x02002D02), 0x04) == 0x04)) then
        gui.drawImageRegion("img//foreground.png", 105,0, 26,32, 290, 127)
    end

    
    emu.frameadvance()
end