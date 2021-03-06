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
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newhor_floor({x=300,y=90})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newpar_floor({x=10,y=250})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newpar_floor({x=10,y=550})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newhor_floor({x=300,y=710})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["DynamicWorld"].objects["object4"] = WorldSet.newBox({x=444,y=344})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object4"].image)
 level.layers["DynamicWorld"].objects["object5"] = WorldSet.newBox({x=444,y=444})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object5"].image)
 level.layers["DynamicWorld"].objects["object6"] = WorldSet.newBox({x=444,y=544})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object6"].image)
 level.layers["DynamicWorld"].objects["object7"] = WorldSet.newBox({x=444,y=644})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object7"].image)
 level.layers["DynamicWorld"].objects["object8"] = WorldSet.newBox({x=544,y=344})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object8"].image)
 level.layers["DynamicWorld"].objects["object9"] = WorldSet.newBox({x=544,y=444})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object9"].image)
 level.layers["DynamicWorld"].objects["object10"] = WorldSet.newBox({x=544,y=544})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object10"].image)
 level.layers["DynamicWorld"].objects["object11"] = WorldSet.newBox({x=544,y=644})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newleftTop_floor({x=820,y=204})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newleftTop_floor({x=840,y=824})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newCheckDoor({x=1070,y=706})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object15"] = WorldSet.newleftTop_floor({x=1260,y=424})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object15"].image)
 level.layers["StaticWorld"].objects["object16"] = WorldSet.newThorn({x=1090,y=428})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object16"].image)
 level.layers["StaticWorld"].objects["object17"] = WorldSet.newleftTop_floor({x=1280,y=1044})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object17"].image)
 level.layers["StaticWorld"].objects["object18"] = WorldSet.newThorn({x=1390,y=588})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object18"].image)
 level.layers["StaticWorld"].objects["object19"] = WorldSet.newleftTop_floor({x=1700,y=644})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object19"].image)
 level.layers["StaticWorld"].objects["object20"] = WorldSet.newleftTop_floor({x=1720,y=1264})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object20"].image)
 level.layers["StaticWorld"].objects["object21"] = WorldSet.newThorn({x=1570,y=688})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object21"].image)
 level.layers["StaticWorld"].objects["object22"] = WorldSet.newThorn({x=1650,y=1208})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object22"].image)
 level.layers["StaticWorld"].objects["object23"] = WorldSet.newThorn({x=1750,y=1248})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object23"].image)
 level.layers["StaticWorld"].objects["object24"] = WorldSet.newThorn({x=1850,y=1308})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object24"].image)
 level.layers["StaticWorld"].objects["object25"] = WorldSet.newleftTop_floor({x=2140,y=864})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object25"].image)
 level.layers["StaticWorld"].objects["object26"] = WorldSet.newleftTop_floor({x=2160,y=1484})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object26"].image)
 level.layers["StaticWorld"].objects["object27"] = WorldSet.newThorn({x=1950,y=1368})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object27"].image)
 level.layers["StaticWorld"].objects["object28"] = WorldSet.newThorn({x=2050,y=1408})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object28"].image)
 level.layers["StaticWorld"].objects["object29"] = WorldSet.newleftTop_floor({x=2580,y=1084})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object29"].image)
 level.layers["StaticWorld"].objects["object30"] = WorldSet.newleftTop_floor({x=2600,y=1704})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object30"].image)
 level.layers["StaticWorld"].objects["object31"] = WorldSet.newThorn({x=2550,y=1168})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object31"].image)
 level.layers["StaticWorld"].objects["object32"] = WorldSet.newleftTop_floor({x=3020,y=1304})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object32"].image)
 level.layers["StaticWorld"].objects["object33"] = WorldSet.newleftTop_floor({x=3040,y=1924})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object33"].image)
 level.layers["StaticWorld"].objects["object34"] = WorldSet.newleftTop_floor({x=3460,y=1524})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object34"].image)
 level.layers["StaticWorld"].objects["object35"] = WorldSet.newleftTop_floor({x=3480,y=2144})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object35"].image)
 level.layers["StaticWorld"].objects["object36"] = WorldSet.newleftTop_floor({x=3900,y=1744})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object36"].image)
 level.layers["StaticWorld"].objects["object37"] = WorldSet.newhor_floor({x=4000,y=2250})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object37"].image)
 level.layers["StaticWorld"].objects["object38"] = WorldSet.newhor_floor({x=4440,y=1850})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object38"].image)
 level.layers["StaticWorld"].objects["object39"] = WorldSet.newhor_floor({x=4600,y=2250})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object39"].image)
 level.layers["StaticWorld"].objects["object40"] = WorldSet.newpar_floor({x=4370,y=1690})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object40"].image)
 level.layers["StaticWorld"].objects["object41"] = WorldSet.newhor_floor({x=4660,y=1530})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object41"].image)
 level.layers["DynamicWorld"].objects["object42"] = WorldSet.newCompanionCube({x=4548,y=1696})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object42"].image)
 level.layers["StaticWorld"].objects["object43"] = WorldSet.newpar_floor({x=4470,y=1370})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object43"].image)
 level.layers["StaticWorld"].objects["object44"] = WorldSet.newhor_floor({x=4760,y=1210})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object44"].image)
 level.layers["InteractiveWorld"].objects["object45"] = WorldSet.newWoodenDoor({x=4560,y=1380})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object45"].image)
 level.layers["StaticWorld"].objects["object46"] = WorldSet.newpar_floor({x=4730,y=1690})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object46"].image)
 level.layers["StaticWorld"].objects["object47"] = WorldSet.newThorn({x=4856,y=1620})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object47"].image)
 level.layers["StaticWorld"].objects["object48"] = WorldSet.newThorn({x=4856,y=1760})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object48"].image)
 level.layers["StaticWorld"].objects["object49"] = WorldSet.newhor_floor({x=5200,y=2250})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object49"].image)
 level.layers["StaticWorld"].objects["object50"] = WorldSet.newhor_floor({x=5220,y=1210})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object50"].image)
 level.layers["StaticWorld"].objects["object51"] = WorldSet.newleftTop_floor({x=5560,y=2004})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object51"].image)
 level.layers["StaticWorld"].objects["object52"] = WorldSet.newhor_floor({x=5624,y=1886})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object52"].image)
 level.layers["StaticWorld"].objects["object53"] = WorldSet.newThorn({x=5450,y=2028})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object53"].image)
 level.layers["StaticWorld"].objects["object54"] = WorldSet.newThorn({x=5450,y=2168})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object54"].image)
 level.layers["StaticWorld"].objects["object55"] = WorldSet.newpar_floor({x=5510,y=1370})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object55"].image)
 level.layers["StaticWorld"].objects["object56"] = WorldSet.newpar_floor({x=5510,y=1590})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object56"].image)
 level.layers["StaticWorld"].objects["object57"] = WorldSet.newpar_floor({x=5510,y=1810})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object57"].image)
 level.layers["StaticWorld"].objects["object58"] = WorldSet.newpar_floor({x=5510,y=2110})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object58"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    return level

end -- CreateLevel