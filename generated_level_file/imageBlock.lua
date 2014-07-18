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
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newsilver_block({x=120,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=10,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object1"].image:rotate(90)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newhor_floor({x=300,y=610})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newsilver_block({x=320,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newsilver_block({x=520,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newsilver_block({x=120,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newsilver_block({x=320,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object7"] = WorldSet.newsilver_block({x=520,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object7"].image)
 level.layers["StaticWorld"].objects["object8"] = WorldSet.newsilver_block({x=1120,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object8"].image)
 level.layers["StaticWorld"].objects["object9"] = WorldSet.newsilver_block({x=920,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object9"].image)
 level.layers["StaticWorld"].objects["object10"] = WorldSet.newsilver_block({x=1120,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object10"].image)
 level.layers["StaticWorld"].objects["object11"] = WorldSet.newsilver_block({x=720,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newsilver_block({x=920,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newsilver_block({x=1520,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newsilver_block({x=1320,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object15"] = WorldSet.newsilver_block({x=720,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object15"].image)
 level.layers["StaticWorld"].objects["object16"] = WorldSet.newsilver_block({x=1300,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object16"].image)
 level.layers["StaticWorld"].objects["object17"] = WorldSet.newsilver_block({x=1700,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object17"].image)
 level.layers["StaticWorld"].objects["object18"] = WorldSet.newsilver_block({x=1720,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object18"].image)
 level.layers["StaticWorld"].objects["object19"] = WorldSet.newsilver_block({x=1720,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object19"].image)
 level.layers["StaticWorld"].objects["object20"] = WorldSet.newsilver_block({x=1520,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object20"].image)
 level.layers["StaticWorld"].objects["object21"] = WorldSet.newsilver_block({x=1100,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object21"].image)
 level.layers["StaticWorld"].objects["object22"] = WorldSet.newsilver_block({x=900,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object22"].image)
 level.layers["StaticWorld"].objects["object23"] = WorldSet.newsilver_block({x=1500,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object23"].image)
 level.layers["StaticWorld"].objects["object24"] = WorldSet.newsilver_block({x=1300,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object24"].image)
 level.layers["StaticWorld"].objects["object25"] = WorldSet.newsilver_block({x=1100,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object25"].image)
 level.layers["StaticWorld"].objects["object26"] = WorldSet.newsilver_block({x=900,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object26"].image)
 level.layers["StaticWorld"].objects["object27"] = WorldSet.newsilver_block({x=700,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object27"].image)
 level.layers["StaticWorld"].objects["object28"] = WorldSet.newsilver_block({x=1320,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object28"].image)
 level.layers["StaticWorld"].objects["object29"] = WorldSet.newsilver_block({x=120,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object29"].image)
 level.layers["StaticWorld"].objects["object30"] = WorldSet.newsilver_block({x=520,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object30"].image)
 level.layers["StaticWorld"].objects["object31"] = WorldSet.newsilver_block({x=320,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object31"].image)
 level.layers["StaticWorld"].objects["object32"] = WorldSet.newhor_floor({x=320,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object32"].image)
 level.layers["StaticWorld"].objects["object33"] = WorldSet.newsilver_block({x=920,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object33"].image)
 level.layers["StaticWorld"].objects["object34"] = WorldSet.newsilver_block({x=1120,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object34"].image)
 level.layers["StaticWorld"].objects["object35"] = WorldSet.newsilver_block({x=720,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object35"].image)
 level.layers["StaticWorld"].objects["object36"] = WorldSet.newhor_floor({x=920,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object36"].image)
 level.layers["StaticWorld"].objects["object37"] = WorldSet.newsilver_block({x=1320,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object37"].image)
 level.layers["StaticWorld"].objects["object38"] = WorldSet.newsilver_block({x=1720,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object38"].image)
 level.layers["StaticWorld"].objects["object39"] = WorldSet.newsilver_block({x=1520,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object39"].image)
 level.layers["StaticWorld"].objects["object40"] = WorldSet.newhor_floor({x=1520,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object40"].image)
 level.layers["StaticWorld"].objects["object41"] = WorldSet.newsilver_block({x=1480,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object41"].image)
 level.layers["StaticWorld"].objects["object42"] = WorldSet.newsilver_block({x=1680,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object42"].image)
 level.layers["StaticWorld"].objects["object43"] = WorldSet.newhor_floor({x=1400,y=910})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object43"].image)
 level.layers["StaticWorld"].objects["object44"] = WorldSet.newhor_floor({x=844,y=758})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object44"].image)
 level.layers["StaticWorld"].objects["object44"].image:rotate(30)
 level.layers["StaticWorld"].objects["object45"] = WorldSet.newsilver_block({x=1880,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object45"].image)
 level.layers["StaticWorld"].objects["object46"] = WorldSet.newsilver_block({x=2080,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object46"].image)
 level.layers["StaticWorld"].objects["object47"] = WorldSet.newsilver_block({x=2280,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object47"].image)
 level.layers["StaticWorld"].objects["object48"] = WorldSet.newhor_floor({x=2000,y=910})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object48"].image)
 level.layers["StaticWorld"].objects["object49"] = WorldSet.newsilver_block({x=1900,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object49"].image)
 level.layers["StaticWorld"].objects["object50"] = WorldSet.newsilver_block({x=1920,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object50"].image)
 level.layers["StaticWorld"].objects["object51"] = WorldSet.newsilver_block({x=2100,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object51"].image)
 level.layers["StaticWorld"].objects["object52"] = WorldSet.newsilver_block({x=2100,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object52"].image)
 level.layers["StaticWorld"].objects["object53"] = WorldSet.newsilver_block({x=1920,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object53"].image)
 level.layers["StaticWorld"].objects["object54"] = WorldSet.newsilver_block({x=2120,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object54"].image)
 level.layers["StaticWorld"].objects["object55"] = WorldSet.newsilver_block({x=2300,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object55"].image)
 level.layers["StaticWorld"].objects["object56"] = WorldSet.newsilver_block({x=2300,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object56"].image)
 level.layers["StaticWorld"].objects["object57"] = WorldSet.newsilver_block({x=2480,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object57"].image)
 level.layers["StaticWorld"].objects["object58"] = WorldSet.newsilver_block({x=2500,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object58"].image)
 level.layers["StaticWorld"].objects["object59"] = WorldSet.newsilver_block({x=2500,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object59"].image)
 level.layers["StaticWorld"].objects["object60"] = WorldSet.newsilver_block({x=1920,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object60"].image)
 level.layers["StaticWorld"].objects["object61"] = WorldSet.newsilver_block({x=2120,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object61"].image)
 level.layers["StaticWorld"].objects["object62"] = WorldSet.newsilver_block({x=2520,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object62"].image)
 level.layers["StaticWorld"].objects["object63"] = WorldSet.newsilver_block({x=2320,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object63"].image)
 level.layers["StaticWorld"].objects["object64"] = WorldSet.newsilver_block({x=2520,y=100})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object64"].image)
 level.layers["StaticWorld"].objects["object65"] = WorldSet.newsilver_block({x=2700,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object65"].image)
 level.layers["StaticWorld"].objects["object66"] = WorldSet.newsilver_block({x=2320,y=300})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object66"].image)
 level.layers["StaticWorld"].objects["object67"] = WorldSet.newhor_floor({x=2120,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object67"].image)
 level.layers["StaticWorld"].objects["object68"] = WorldSet.newhor_floor({x=2720,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object68"].image)
 level.layers["StaticWorld"].objects["object69"] = WorldSet.newsilver_block({x=2900,y=700})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object69"].image)
 level.layers["StaticWorld"].objects["object70"] = WorldSet.newsilver_block({x=3080,y=520})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object70"].image)
 level.layers["StaticWorld"].objects["object71"] = WorldSet.newsilver_block({x=2900,y=520})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object71"].image)
 level.layers["StaticWorld"].objects["object72"] = WorldSet.newhor_floor({x=2544,y=758})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object72"].image)
 level.layers["StaticWorld"].objects["object72"].image:rotate(330)
 level.layers["StaticWorld"].objects["object73"] = WorldSet.newsilver_block({x=2720,y=120})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object73"].image)
 level.layers["StaticWorld"].objects["object74"] = WorldSet.newsilver_block({x=2700,y=500})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object74"].image)
 level.layers["StaticWorld"].objects["object75"] = WorldSet.newsilver_block({x=2720,y=320})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object75"].image)
 level.layers["StaticWorld"].objects["object76"] = WorldSet.newsilver_block({x=2920,y=120})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object76"].image)
 level.layers["StaticWorld"].objects["object77"] = WorldSet.newsilver_block({x=2920,y=320})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object77"].image)
 level.layers["StaticWorld"].objects["object78"] = WorldSet.newsilver_block({x=3320,y=520})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object78"].image)
 level.layers["StaticWorld"].objects["object79"] = WorldSet.newsilver_block({x=3180,y=520})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object79"].image)
 level.layers["StaticWorld"].objects["object80"] = WorldSet.newhor_floor({x=3100,y=610})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object80"].image)
 level.layers["StaticWorld"].objects["object81"] = WorldSet.newsilver_block({x=3320,y=320})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object81"].image)
 level.layers["InteractiveWorld"].objects["object82"] = WorldSet.newWoodenDoor({x=3306,y=448})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object82"].image)
 level.layers["StaticWorld"].objects["object83"] = WorldSet.newsilver_block({x=3320,y=120})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object83"].image)
 level.layers["StaticWorld"].objects["object84"] = WorldSet.newhor_floor({x=3410,y=320})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object84"].image)
 level.layers["StaticWorld"].objects["object84"].image:rotate(90)
 level.layers["StaticWorld"].objects["object85"] = WorldSet.newhor_floor({x=3320,y=10})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object85"].image)
 level.layers["StaticWorld"].objects["object86"] = WorldSet.newsilver_block({x=3120,y=120})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object86"].image)
 level.layers["StaticWorld"].objects["object87"] = WorldSet.newsilver_block({x=3120,y=320})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object87"].image)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    return level

end -- CreateLevel