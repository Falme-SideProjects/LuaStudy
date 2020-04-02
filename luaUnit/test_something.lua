luaunit = require('luaunit')

function add(v1, v2)
    if v1 < 0 or v2 < 0 then
        error('Can only add positive or null numbers, received '..v1..' and '..v2)
    end
    if v1 == 0 or v2 == 0 then
        return 0
    end
    return v1+v2
end

function testAddPositive()
    luaunit.assertEquals(add(1,1),2)
end

function testAddZero()
    luaunit.assertEquals(add(0,0),0)
    luaunit.assertEquals(add(0,1),0)
    luaunit.assertEquals(add(1,0),0)
end


os.exit(luaunit.LuaUnit.run())