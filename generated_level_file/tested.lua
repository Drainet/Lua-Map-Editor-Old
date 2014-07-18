    -- Generated by Kalacool Editor

module(..., package.seeall)
require("kalacool.sango.Set.WorldSet")
require("kalacool.sango.Set.EnemySet")
require("kalacool.sango.Set.SupplementSet")
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
level.layers["Monster"] = display.newGroup()
level.layers["Monster"].name = "Monster"
level.layers["Monster"].objects = {}
level.layers["Supplement"] = display.newGroup()
level.layers["Supplement"].name = "Supplement"
level.layers["Supplement"].objects = {}
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newhor_floor({x=302,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=900,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newpar_floor({x=816,y=538})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["InteractiveWorld"].objects["object3"] = WorldSet.newfloatingFloor({x=1110,y=510})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object3"].image)
 level.layers["Monster"].objects["object4"] = EnemySet.newMonsterFireball({x=1050,y=166,xL=0,xR=3000})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newhor_floor({x=1500,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["InteractiveWorld"].objects["object6"] = WorldSet.newfloatingFloor({x=1370,y=510})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object6"].image)
 level.layers["DynamicWorld"].objects["object7"] = WorldSet.newBox({x=1376,y=454})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object7"].image)
 level.layers["InteractiveWorld"].objects["object8"] = WorldSet.newfloatingFloor({x=1630,y=510})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object8"].image)
 level.layers["StaticWorld"].objects["object9"] = WorldSet.newhor_floor({x=2100,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object9"].image)
 level.layers["Monster"].objects["object10"] = EnemySet.newMonsterFireball({x=1900,y=338,xL=1400,xR=1800})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object10"].image)
 level.layers["Monster"].objects["object11"] = EnemySet.newMonsterCannon({x=2042,y=632,name="MoreLife"})
 level.layers["Monster"]:insert(level.layers["Monster"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newhor_floor({x=2700,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newhor_floor({x=3300,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newhor_floor({x=3900,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object15"] = WorldSet.newhor_floor({x=4500,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object15"].image)
 level.layers["StaticWorld"].objects["object16"] = WorldSet.newhor_floor({x=5100,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object16"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    return level

end -- CreateLevel