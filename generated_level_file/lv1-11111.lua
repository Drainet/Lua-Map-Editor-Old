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
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newpar_floor({x=16,y=238})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=304,y=96})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newpar_floor({x=16,y=538})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newhor_floor({x=300,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newleftTop_floor({x=844,y=238})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newleftTop_floor({x=844,y=858})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newpar_floor({x=1116,y=238})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object7"] = WorldSet.newhor_floor({x=1400,y=990})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object7"].image)
 level.layers["StaticWorld"].objects["object8"] = WorldSet.newhor_floor({x=1420,y=110})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object8"].image)
 level.layers["StaticWorld"].objects["object9"] = WorldSet.newpar_floor({x=1716,y=838})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object9"].image)
 level.layers["StaticWorld"].objects["object10"] = WorldSet.newhor_floor({x=2020,y=110})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object10"].image)
 level.layers["StaticWorld"].objects["object11"] = WorldSet.newhor_floor({x=2020,y=690})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newleftTop_floor({x=2300,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newpar_floor({x=2300,y=680})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newpar_floor({x=2300,y=980})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object15"] = WorldSet.newpar_floor({x=2300,y=1280})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object15"].image)
 level.layers["StaticWorld"].objects["object16"] = WorldSet.newpar_floor({x=2300,y=1580})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object16"].image)
 level.layers["StaticWorld"].objects["object17"] = WorldSet.newpar_floor({x=2300,y=1880})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object17"].image)
 level.layers["StaticWorld"].objects["object18"] = WorldSet.newpar_floor({x=2300,y=2180})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object18"].image)
 level.layers["StaticWorld"].objects["object19"] = WorldSet.newhor_floor({x=2320,y=2480})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object19"].image)
 level.layers["StaticWorld"].objects["object20"] = WorldSet.newleftTop_floor({x=2820,y=400})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object20"].image)
 level.layers["StaticWorld"].objects["object21"] = WorldSet.newhor_floor({x=2920,y=2480})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object21"].image)
 level.layers["StaticWorld"].objects["object22"] = WorldSet.newpar_floor({x=3320,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object22"].image)
 level.layers["StaticWorld"].objects["object23"] = WorldSet.newpar_floor({x=3320,y=1000})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object23"].image)
 level.layers["StaticWorld"].objects["object24"] = WorldSet.newpar_floor({x=3320,y=1300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object24"].image)
 level.layers["StaticWorld"].objects["object25"] = WorldSet.newpar_floor({x=3320,y=1600})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object25"].image)
 level.layers["StaticWorld"].objects["object26"] = WorldSet.newhor_floor({x=3340,y=1900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object26"].image)
 level.layers["StaticWorld"].objects["object27"] = WorldSet.newhor_floor({x=3520,y=2480})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object27"].image)
 level.layers["InteractiveWorld"].objects["object28"] = WorldSet.newfloatingFloor({x=3800,y=2180})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object28"].image)
 level.layers["InteractiveWorld"].objects["object29"] = WorldSet.newfloatingFloor({x=3840,y=860})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object29"].image)
 level.layers["InteractiveWorld"].objects["object30"] = WorldSet.newfloatingFloor({x=3840,y=1580})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object30"].image)
 level.layers["StaticWorld"].objects["object31"] = WorldSet.newpar_floor({x=3940,y=200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object31"].image)
 level.layers["StaticWorld"].objects["object32"] = WorldSet.newpar_floor({x=3940,y=400})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object32"].image)
 level.layers["StaticWorld"].objects["object33"] = WorldSet.newpar_floor({x=3940,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object33"].image)
 level.layers["StaticWorld"].objects["object34"] = WorldSet.newpar_floor({x=3940,y=1000})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object34"].image)
 level.layers["StaticWorld"].objects["object35"] = WorldSet.newpar_floor({x=3940,y=1300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object35"].image)
 level.layers["StaticWorld"].objects["object36"] = WorldSet.newpar_floor({x=3940,y=1600})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object36"].image)
 level.layers["StaticWorld"].objects["object37"] = WorldSet.newhor_floor({x=3960,y=200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object37"].image)
 level.layers["StaticWorld"].objects["object38"] = WorldSet.newhor_floor({x=4120,y=2480})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object38"].image)
 level.layers["InteractiveWorld"].objects["object39"] = WorldSet.newfloatingFloor({x=4200,y=1200})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object39"].image)
 level.layers["InteractiveWorld"].objects["object40"] = WorldSet.newfloatingFloor({x=4200,y=1880})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object40"].image)
 level.layers["StaticWorld"].objects["object41"] = WorldSet.newhor_floor({x=4560,y=200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object41"].image)
 level.layers["StaticWorld"].objects["object42"] = WorldSet.newpar_floor({x=4720,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object42"].image)
 level.layers["StaticWorld"].objects["object43"] = WorldSet.newhor_floor({x=4720,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object43"].image)
 level.layers["StaticWorld"].objects["object44"] = WorldSet.newpar_floor({x=4720,y=980})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object44"].image)
 level.layers["StaticWorld"].objects["object45"] = WorldSet.newpar_floor({x=4720,y=1280})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object45"].image)
 level.layers["StaticWorld"].objects["object46"] = WorldSet.newpar_floor({x=4720,y=1580})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object46"].image)
 level.layers["StaticWorld"].objects["object47"] = WorldSet.newpar_floor({x=4720,y=1880})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object47"].image)
 level.layers["StaticWorld"].objects["object48"] = WorldSet.newpar_floor({x=4720,y=2180})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object48"].image)
 level.layers["StaticWorld"].objects["object49"] = WorldSet.newhor_floor({x=4740,y=200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object49"].image)
 level.layers["InteractiveWorld"].objects["object50"] = WorldSet.newWoodenDoor({x=5200,y=400})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object50"].image)
 level.layers["StaticWorld"].objects["object51"] = WorldSet.newpar_floor({x=5340,y=200})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object51"].image)
 level.layers["StaticWorld"].objects["object52"] = WorldSet.newpar_floor({x=5340,y=400})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object52"].image)
 level.layers["InteractiveWorld"].objects["object53"] = WorldSet.newWoodenDoor({x=100,y=702})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object53"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    return level

end -- CreateLevel