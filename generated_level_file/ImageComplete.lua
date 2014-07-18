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
level.layers["Image"] = display.newGroup()
level.layers["Image"].name = "Image"
level.layers["Image"].objects = {}
 level.layers["Image"].objects["object0"] = display.newImage("kalacool/sango/image/world/dynamicWorld/box.png",658,656)
 level.layers["Image"]:insert(level.layers["Image"].objects["object0"])
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=300,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newM_hor_floor({x=830,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["Image"].objects["object3"] = display.newImage("kalacool/sango/image/world/dynamicWorld/box.png",660,564)
 level.layers["Image"]:insert(level.layers["Image"].objects["object3"])
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newM_hor_floor({x=710,y=610})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object4"].image:rotate(270)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newS_hor_floor({x=660,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newS_hor_floor({x=660,y=510})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object7"] = WorldSet.newM_hor_floor({x=610,y=610})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object7"].image)
 level.layers["StaticWorld"].objects["object7"].image:rotate(270)
 level.layers["Image"].objects["object8"] = display.newImage("kalacool/sango/image/world/dynamicWorld/companionCube.png",824,596)
 level.layers["Image"]:insert(level.layers["Image"].objects["object8"])
 level.layers["DynamicWorld"].objects["object9"] = WorldSet.newCompanionCube({x=510,y=592})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object9"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    level:insert(level.layers["Image"])

    return level

end -- CreateLevel