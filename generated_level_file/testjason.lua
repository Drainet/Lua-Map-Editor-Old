    -- Generated by Kalacool Editor

module(..., package.seeall)
require("kalacool.sango.Set.WorldSet")
function CreateLevel(physics)

    display.setDefault( 'background', 0, 0, 0 )
    physics.setGravity(0.0,20.0)
    local collFilter = nil
    local level = display.newGroup()
    level.layers = {}
    level.name = "1-1"

level.layers["StaticWorld"] = display.newGroup()
level.layers["StaticWorld"].name = "StaticWorld"
level.layers["StaticWorld"].objects = {}
level.layers["DynamicWorld"] = display.newGroup()
level.layers["DynamicWorld"].name = "StaticWorld"
level.layers["DynamicWorld"].objects = {}
level.layers["InteractiveWorld"] = display.newGroup()
level.layers["InteractiveWorld"].name = "StaticWorld"
level.layers["InteractiveWorld"].objects = {
 level.layers["Monster"].objects["object0"] = SupplementSet.newSupShootFaster({x=456,y=328})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object0"].image)
 level.layers["Monster"].objects["object1"] = EnemySet.newMonsterFireball({x=510,y=660,xL=1000,xR=50})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newpar_floor({x=690,y=302})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["Monster"].objects["object3"] = EnemySet.newMonsterFireball({x=732,y=442})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object3"].image)
 level.layers["Monster"].objects["object4"] = EnemySet.newMonsterFireball({x=944,y=276})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newleftTop_floor({x=1188,y=250})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    return level

end -- CreateLevel