    -- Generated by Kalacool Editor

    -- Generated by Kalacool Editor

module(..., package.seeall)
require("kalacool.sango.Set.WorldSet")
require("kalacool.sango.Set.SupplementSet")
require("kalacool.sango.Set.MechanismSet")
function CreateLevel(physics)

    display.setDefault( 'background', 0, 0, 0 )
    physics.setGravity(0.0,20.0)
    local collFilter = nil
    local level = display.newGroup()
    level.layers = {}
    level.name = "LV1-1"

local MonsterSpawnWavesClass = require "kalacool.sango.System.MonsterSpawnWaves"
MonsterImageGroup = display.newGroup()
MonsterSpawnWavesClass.NextWaveHandler(MonsterImageGroup)
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

level.layers["StaticWorld"].objects["boundRecUp"] = WorldSet.newboundRecRow({y=570})
level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["boundRecUp"])
level.layers["StaticWorld"].objects["boundRecUp"] = WorldSet.newboundRecRow({y=1440})
level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["boundRecUp"])
 level.layers["Image"].objects["object0"] = display.newImage("kalacool/sango/image/tut/TUT_jump.png",1418,1084)
 level.layers["Image"]:insert(level.layers["Image"].objects["object0"])
 level.layers["Image"].objects["object1"] = display.newImage("kalacool/sango/image/tut/TUT_shoot.png",404,978)
 level.layers["Image"]:insert(level.layers["Image"].objects["object1"])
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newM_hor_floor({x=1730,y=1380})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newM_hor_floor({x=2388,y=1028})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["StaticWorld"].objects["object3"].image:rotate(315)
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newM_hor_floor({x=2808,y=888})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object4"].image:rotate(315)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newM_hor_floor({x=2398,y=1316})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object5"].image:rotate(30)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newM_hor_floor({x=2818,y=1136})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object6"].image:rotate(30)
 level.layers["InteractiveWorld"].objects["object7"] = WorldSet.newSpinningTire({x=3378,y=1058})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object7"].image)
 level.layers["Image"].objects["object8"] = display.newImage("kalacool/sango/image/tut/TUT_move.png",2258,1124)
 level.layers["Image"]:insert(level.layers["Image"].objects["object8"])
 level.layers["InteractiveWorld"].objects["object9"] = MechanismSet.newMonsterSpawnZone({x=4050,y=1080,wave=1})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object9"].image)
 level.layers["StaticWorld"].objects["object10"] = WorldSet.newM_hor_floor({x=4430,y=1340})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object10"].image)
 level.layers["StaticWorld"].objects["object11"] = WorldSet.newM_hor_floor({x=4430,y=820})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newS_hor_floor({x=4500,y=908})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object12"].image:rotate(120)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newS_hor_floor({x=4500,y=1248})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object13"].image:rotate(60)
 level.layers["InteractiveWorld"].objects["object14"] = MechanismSet.newDisappearFloorVertical({x=4554,y=1080})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object14"].image)
 level.layers["Image"].objects["object15"] = display.newImage("kalacool/sango/image/tut/TUT_killMonster.png",4318,1084)
 level.layers["Image"]:insert(level.layers["Image"].objects["object15"])
MonsterSpawnWavesClass.addMonster({ID=1,x=3020,y=1140,wave=1,xL=2000,xR=5000})
MonsterSpawnWavesClass.addMonster({ID=1,x=2540,y=1000,wave=1,xL=2000,xR=5000})
 level.layers["InteractiveWorld"].objects["object18"] = MechanismSet.newMonsterSpawnZone({x=5010,y=1080,wave=2})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object18"].image)
MonsterSpawnWavesClass.addMonster({ID=301,x=4410,y=1060,wave=2,xR=6500})
 level.layers["Image"].objects["object20"] = display.newImage("kalacool/sango/image/tut/TUT_escape.png",5212,1116)
 level.layers["Image"]:insert(level.layers["Image"].objects["object20"])
 level.layers["StaticWorld"].objects["object21"] = WorldSet.newS_hor_floor({x=5694,y=1024})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object21"].image)
 level.layers["StaticWorld"].objects["object21"].image:rotate(90)
 level.layers["StaticWorld"].objects["object22"] = WorldSet.newM_hor_floor({x=6770,y=1340})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object22"].image)
 level.layers["StaticWorld"].objects["object23"] = WorldSet.newM_hor_floor({x=6818,y=1196})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object23"].image)
 level.layers["StaticWorld"].objects["object23"].image:rotate(30)
 level.layers["StaticWorld"].objects["object24"] = WorldSet.newS_hor_floor({x=7050,y=980})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object24"].image)
 level.layers["StaticWorld"].objects["object25"] = WorldSet.newM_hor_floor({x=6940,y=1090})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object25"].image)
 level.layers["StaticWorld"].objects["object25"].image:rotate(90)
 level.layers["StaticWorld"].objects["object26"] = WorldSet.newM_hor_floor({x=7160,y=890})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object26"].image)
 level.layers["StaticWorld"].objects["object26"].image:rotate(90)
 level.layers["DynamicWorld"].objects["object27"] = WorldSet.newBox({x=7330,y=990})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object27"].image)
 level.layers["DynamicWorld"].objects["object28"] = WorldSet.newBox({x=7330,y=930})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object28"].image)
 level.layers["DynamicWorld"].objects["object29"] = WorldSet.newBox({x=7330,y=870})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object29"].image)
 level.layers["DynamicWorld"].objects["object30"] = WorldSet.newBox({x=7330,y=810})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object30"].image)
 level.layers["DynamicWorld"].objects["object31"] = WorldSet.newBox({x=7330,y=750})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object31"].image)
 level.layers["Image"].objects["object32"] = display.newImage("kalacool/sango/image/tut/TUT_smash.png",7132,802)
 level.layers["Image"]:insert(level.layers["Image"].objects["object32"])
 level.layers["StaticWorld"].objects["object33"] = WorldSet.newM_hor_floor({x=7320,y=1030})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object33"].image)
 level.layers["StaticWorld"].objects["object33"].image:rotate(90)
 level.layers["StaticWorld"].objects["object34"] = WorldSet.newM_hor_floor({x=7440,y=1030})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object34"].image)
 level.layers["StaticWorld"].objects["object34"].image:rotate(90)
 level.layers["StaticWorld"].objects["object35"] = WorldSet.newM_hor_floor({x=7998,y=776})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object35"].image)
 level.layers["StaticWorld"].objects["object35"].image:rotate(330)
 level.layers["StaticWorld"].objects["object36"] = WorldSet.newM_hor_floor({x=8030,y=880})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object36"].image)
 level.layers["DynamicWorld"].objects["object37"] = WorldSet.newBox({x=7390,y=990})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object37"].image)
 level.layers["DynamicWorld"].objects["object38"] = WorldSet.newBox({x=7390,y=930})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object38"].image)
 level.layers["DynamicWorld"].objects["object39"] = WorldSet.newBox({x=7390,y=870})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object39"].image)
 level.layers["DynamicWorld"].objects["object40"] = WorldSet.newBox({x=7450,y=990})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object40"].image)
 level.layers["DynamicWorld"].objects["object41"] = WorldSet.newBox({x=7390,y=810})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object41"].image)
 level.layers["InteractiveWorld"].objects["object42"] = WorldSet.newWoodenDoor({x=8020,y=1080})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object42"].image)
 level.layers["StaticWorld"].objects["object43"] = WorldSet.newM_hor_floor({x=7998,y=1376})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object43"].image)
 level.layers["StaticWorld"].objects["object43"].image:rotate(30)
 level.layers["StaticWorld"].objects["object44"] = WorldSet.newM_hor_floor({x=8030,y=1280})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object44"].image)
 level.layers["StaticWorld"].objects["object45"] = WorldSet.newM_hor_floor({x=8030,y=1220})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object45"].image)
 level.layers["StaticWorld"].objects["object46"] = WorldSet.newM_hor_floor({x=8030,y=940})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object46"].image)
 level.layers["Image"].objects["object47"] = display.newImage("kalacool/sango/image/tut/TUT_complete.png",7798,1084)
 level.layers["Image"]:insert(level.layers["Image"].objects["object47"])
 level.layers["InteractiveWorld"].objects["object48"] = WorldSet.newSpinningTire({x=5570,y=1430})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object48"].image)
 level.layers["InteractiveWorld"].objects["object49"] = WorldSet.newSpinningTire({x=6130,y=1110})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object49"].image)
 level.layers["InteractiveWorld"].objects["object50"] = WorldSet.newSpinningTire({x=5310,y=690})
 level.layers["InteractiveWorld"]:insert(level.layers["InteractiveWorld"].objects["object50"].image)
 level.layers["DynamicWorld"].objects["object51"] = WorldSet.newCompanionCube({x=1600,y=1360})
 level.layers["DynamicWorld"]:insert(level.layers["DynamicWorld"].objects["object51"].image)
 level.layers["StaticWorld"].objects["object52"] = WorldSet.newS_hor_floor({x=2350,y=900})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object52"].image)
 level.layers["StaticWorld"].objects["object53"] = WorldSet.newS_hor_floor({x=2350,y=780})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object53"].image)
 level.layers["StaticWorld"].objects["object54"] = WorldSet.newS_hor_floor({x=2790,y=1260})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object54"].image)
 level.layers["StaticWorld"].objects["object55"] = WorldSet.newS_hor_floor({x=2770,y=780})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object55"].image)
 level.layers["StaticWorld"].objects["object56"] = WorldSet.newS_hor_floor({x=2790,y=1380})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object56"].image)

    level:insert(MonsterImageGroup)
	
	level:insert(level.layers["Image"])
	
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Supplement"])
	
    level:insert(level.layers["Monster"])

    return level

end -- CreateLevel