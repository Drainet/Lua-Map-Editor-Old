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
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newhor_floor({x=320,y=1070})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=920,y=1070})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newsilver_block({x=1632,y=810})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object2"].image:rotate(315)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newsilver_block({x=1498,y=942})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["StaticWorld"].objects["object3"].image:rotate(45)
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newsilver_block({x=1762,y=936})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object4"].image:rotate(45)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newsilver_block({x=1506,y=1200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object5"].image:rotate(45)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newsilver_block({x=1760,y=1196})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object6"].image:rotate(45)
 level.layers["StaticWorld"].objects["object7"] = WorldSet.newsilver_block({x=1632,y=1324})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object7"].image)
 level.layers["StaticWorld"].objects["object7"].image:rotate(315)
 level.layers["StaticWorld"].objects["object8"] = WorldSet.newsilver_block({x=1366,y=1072})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object8"].image)
 level.layers["StaticWorld"].objects["object8"].image:rotate(45)
 level.layers["StaticWorld"].objects["object9"] = WorldSet.newsilver_block({x=1630,y=1070})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object9"].image)
 level.layers["StaticWorld"].objects["object9"].image:rotate(45)
 level.layers["StaticWorld"].objects["object10"] = WorldSet.newhor_floor({x=1424,y=866})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object10"].image)
 level.layers["StaticWorld"].objects["object10"].image:rotate(315)
 level.layers["StaticWorld"].objects["object11"] = WorldSet.newsilver_block({x=1894,y=1068})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object11"].image:rotate(315)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newhor_floor({x=1836,y=866})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object12"].image:rotate(225)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newhor_floor({x=1426,y=1274})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object13"].image:rotate(45)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newhor_floor({x=1834,y=1274})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object14"].image:rotate(315)
 level.layers["InteractiveWorld"].objects["object15"] = WorldSet.newSpinningTire({x=1076,y=792})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object15"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    return level

end -- CreateLevel