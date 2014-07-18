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
level.layers["InteractiveWorld"].objects = {}
 level.layers["Monster"].objects["object0"] = EnemySet.newMonsterCannon({x=1290,y=470})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newThorn({x=1354,y=1184})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newpar_floor({x=1660,y=706})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newleftTop_floor({x=1058,y=936})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["Monster"].objects["object4"] = EnemySet.newMonsterFireball({x=696,y=500,xL=50,xR=20})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object4"].image)
 level.layers["Monster"].objects["object5"] = EnemySet.newMonsterCannon({x=2030,y=480})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object5"].image)
 level.layers["Monster"].objects["object6"] = EnemySet.newMonsterFireball({x=1972,y=1164,xL=50,xR=20})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object6"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    return level

end -- CreateLevel