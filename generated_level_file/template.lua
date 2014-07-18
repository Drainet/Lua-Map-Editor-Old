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
    level.name = "template"

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
 level.layers["StaticWorld"].objects["object0"] = WorldSet.newhor_floor({x=300,y=730})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object0"].image)
 level.layers["StaticWorld"].objects["object1"] = WorldSet.newhor_floor({x=900,y=730})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object1"].image)
 level.layers["StaticWorld"].objects["object2"] = WorldSet.newhor_floor({x=1500,y=730})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object2"].image)
 level.layers["StaticWorld"].objects["object3"] = WorldSet.newhor_floor({x=2100,y=730})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object3"].image)
 level.layers["StaticWorld"].objects["object4"] = WorldSet.newhor_floor({x=2400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object4"].image)
 level.layers["StaticWorld"].objects["object5"] = WorldSet.newhor_floor({x=3000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object5"].image)
 level.layers["StaticWorld"].objects["object6"] = WorldSet.newhor_floor({x=3600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object6"].image)
 level.layers["StaticWorld"].objects["object7"] = WorldSet.newhor_floor({x=4200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object7"].image)
 level.layers["StaticWorld"].objects["object8"] = WorldSet.newhor_floor({x=4800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object8"].image)
 level.layers["StaticWorld"].objects["object9"] = WorldSet.newhor_floor({x=5400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object9"].image)
 level.layers["StaticWorld"].objects["object10"] = WorldSet.newhor_floor({x=6000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object10"].image)
 level.layers["StaticWorld"].objects["object11"] = WorldSet.newhor_floor({x=6600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object11"].image)
 level.layers["StaticWorld"].objects["object12"] = WorldSet.newhor_floor({x=7200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object12"].image)
 level.layers["StaticWorld"].objects["object13"] = WorldSet.newhor_floor({x=7800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object13"].image)
 level.layers["StaticWorld"].objects["object14"] = WorldSet.newhor_floor({x=8400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object14"].image)
 level.layers["StaticWorld"].objects["object15"] = WorldSet.newhor_floor({x=9000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object15"].image)
 level.layers["StaticWorld"].objects["object16"] = WorldSet.newhor_floor({x=9600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object16"].image)
 level.layers["StaticWorld"].objects["object17"] = WorldSet.newhor_floor({x=10200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object17"].image)
 level.layers["StaticWorld"].objects["object18"] = WorldSet.newhor_floor({x=10800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object18"].image)
 level.layers["StaticWorld"].objects["object19"] = WorldSet.newhor_floor({x=11400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object19"].image)
 level.layers["StaticWorld"].objects["object20"] = WorldSet.newhor_floor({x=12000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object20"].image)
 level.layers["StaticWorld"].objects["object21"] = WorldSet.newhor_floor({x=12600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object21"].image)
 level.layers["StaticWorld"].objects["object22"] = WorldSet.newhor_floor({x=13200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object22"].image)
 level.layers["StaticWorld"].objects["object23"] = WorldSet.newhor_floor({x=13800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object23"].image)
 level.layers["StaticWorld"].objects["object24"] = WorldSet.newhor_floor({x=14400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object24"].image)
 level.layers["StaticWorld"].objects["object25"] = WorldSet.newhor_floor({x=15000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object25"].image)
 level.layers["StaticWorld"].objects["object26"] = WorldSet.newhor_floor({x=15600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object26"].image)
 level.layers["StaticWorld"].objects["object27"] = WorldSet.newhor_floor({x=16200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object27"].image)
 level.layers["StaticWorld"].objects["object28"] = WorldSet.newhor_floor({x=16800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object28"].image)
 level.layers["StaticWorld"].objects["object29"] = WorldSet.newhor_floor({x=17400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object29"].image)
 level.layers["StaticWorld"].objects["object30"] = WorldSet.newhor_floor({x=18000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object30"].image)
 level.layers["StaticWorld"].objects["object31"] = WorldSet.newhor_floor({x=18600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object31"].image)
 level.layers["StaticWorld"].objects["object32"] = WorldSet.newhor_floor({x=19200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object32"].image)
 level.layers["StaticWorld"].objects["object33"] = WorldSet.newhor_floor({x=19800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object33"].image)
 level.layers["StaticWorld"].objects["object34"] = WorldSet.newhor_floor({x=20400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object34"].image)
 level.layers["StaticWorld"].objects["object35"] = WorldSet.newhor_floor({x=21000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object35"].image)
 level.layers["StaticWorld"].objects["object36"] = WorldSet.newhor_floor({x=21600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object36"].image)
 level.layers["StaticWorld"].objects["object37"] = WorldSet.newhor_floor({x=22200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object37"].image)
 level.layers["StaticWorld"].objects["object38"] = WorldSet.newhor_floor({x=22800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object38"].image)
 level.layers["StaticWorld"].objects["object39"] = WorldSet.newhor_floor({x=23400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object39"].image)
 level.layers["StaticWorld"].objects["object40"] = WorldSet.newhor_floor({x=24000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object40"].image)
 level.layers["StaticWorld"].objects["object41"] = WorldSet.newhor_floor({x=24600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object41"].image)
 level.layers["StaticWorld"].objects["object42"] = WorldSet.newhor_floor({x=25200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object42"].image)
 level.layers["StaticWorld"].objects["object43"] = WorldSet.newhor_floor({x=25800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object43"].image)
 level.layers["StaticWorld"].objects["object44"] = WorldSet.newhor_floor({x=26400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object44"].image)
 level.layers["StaticWorld"].objects["object45"] = WorldSet.newhor_floor({x=27000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object45"].image)
 level.layers["StaticWorld"].objects["object46"] = WorldSet.newhor_floor({x=27600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object46"].image)
 level.layers["StaticWorld"].objects["object47"] = WorldSet.newhor_floor({x=28200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object47"].image)
 level.layers["StaticWorld"].objects["object48"] = WorldSet.newhor_floor({x=28800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object48"].image)
 level.layers["StaticWorld"].objects["object49"] = WorldSet.newhor_floor({x=29400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object49"].image)
 level.layers["StaticWorld"].objects["object50"] = WorldSet.newhor_floor({x=30000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object50"].image)
 level.layers["StaticWorld"].objects["object51"] = WorldSet.newhor_floor({x=30600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object51"].image)
 level.layers["StaticWorld"].objects["object52"] = WorldSet.newhor_floor({x=31200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object52"].image)
 level.layers["StaticWorld"].objects["object53"] = WorldSet.newhor_floor({x=31800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object53"].image)
 level.layers["StaticWorld"].objects["object54"] = WorldSet.newhor_floor({x=32400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object54"].image)
 level.layers["StaticWorld"].objects["object55"] = WorldSet.newhor_floor({x=33000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object55"].image)
 level.layers["StaticWorld"].objects["object56"] = WorldSet.newhor_floor({x=33600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object56"].image)
 level.layers["StaticWorld"].objects["object57"] = WorldSet.newhor_floor({x=34200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object57"].image)
 level.layers["StaticWorld"].objects["object58"] = WorldSet.newhor_floor({x=34800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object58"].image)
 level.layers["StaticWorld"].objects["object59"] = WorldSet.newhor_floor({x=35400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object59"].image)
 level.layers["StaticWorld"].objects["object60"] = WorldSet.newhor_floor({x=36000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object60"].image)
 level.layers["StaticWorld"].objects["object61"] = WorldSet.newhor_floor({x=36600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object61"].image)
 level.layers["StaticWorld"].objects["object62"] = WorldSet.newhor_floor({x=37200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object62"].image)
 level.layers["StaticWorld"].objects["object63"] = WorldSet.newhor_floor({x=37800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object63"].image)
 level.layers["StaticWorld"].objects["object64"] = WorldSet.newhor_floor({x=38400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object64"].image)
 level.layers["StaticWorld"].objects["object65"] = WorldSet.newhor_floor({x=39000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object65"].image)
 level.layers["StaticWorld"].objects["object66"] = WorldSet.newhor_floor({x=39600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object66"].image)
 level.layers["StaticWorld"].objects["object67"] = WorldSet.newhor_floor({x=40200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object67"].image)
 level.layers["StaticWorld"].objects["object68"] = WorldSet.newhor_floor({x=40800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object68"].image)
 level.layers["StaticWorld"].objects["object69"] = WorldSet.newhor_floor({x=41400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object69"].image)
 level.layers["StaticWorld"].objects["object70"] = WorldSet.newhor_floor({x=42000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object70"].image)
 level.layers["StaticWorld"].objects["object71"] = WorldSet.newhor_floor({x=42600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object71"].image)
 level.layers["StaticWorld"].objects["object72"] = WorldSet.newhor_floor({x=43200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object72"].image)
 level.layers["StaticWorld"].objects["object73"] = WorldSet.newhor_floor({x=43800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object73"].image)
 level.layers["StaticWorld"].objects["object74"] = WorldSet.newhor_floor({x=44400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object74"].image)
 level.layers["StaticWorld"].objects["object75"] = WorldSet.newhor_floor({x=45000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object75"].image)
 level.layers["StaticWorld"].objects["object76"] = WorldSet.newhor_floor({x=45600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object76"].image)
 level.layers["StaticWorld"].objects["object77"] = WorldSet.newhor_floor({x=46200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object77"].image)
 level.layers["StaticWorld"].objects["object78"] = WorldSet.newhor_floor({x=46800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object78"].image)
 level.layers["StaticWorld"].objects["object79"] = WorldSet.newhor_floor({x=47400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object79"].image)
 level.layers["StaticWorld"].objects["object80"] = WorldSet.newhor_floor({x=48000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object80"].image)
 level.layers["StaticWorld"].objects["object81"] = WorldSet.newhor_floor({x=48600,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object81"].image)
 level.layers["StaticWorld"].objects["object82"] = WorldSet.newhor_floor({x=49200,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object82"].image)
 level.layers["StaticWorld"].objects["object83"] = WorldSet.newhor_floor({x=49800,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object83"].image)
 level.layers["StaticWorld"].objects["object84"] = WorldSet.newhor_floor({x=50400,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object84"].image)
 level.layers["StaticWorld"].objects["object85"] = WorldSet.newhor_floor({x=51000,y=720})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object85"].image)
 level.layers["StaticWorld"].objects["object86"] = WorldSet.newhor_floor({x=51180,y=780})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object86"].image)
 level.layers["StaticWorld"].objects["object86"].image:rotate(90)
 level.layers["StaticWorld"].objects["object87"] = WorldSet.newhor_floor({x=10,y=1080})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object87"].image)
 level.layers["StaticWorld"].objects["object87"].image:rotate(90)
 level.layers["StaticWorld"].objects["object88"] = WorldSet.newhor_floor({x=300,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object88"].image)
 level.layers["StaticWorld"].objects["object89"] = WorldSet.newhor_floor({x=900,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object89"].image)
 level.layers["StaticWorld"].objects["object90"] = WorldSet.newhor_floor({x=1500,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object90"].image)
 level.layers["StaticWorld"].objects["object91"] = WorldSet.newhor_floor({x=2100,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object91"].image)
 level.layers["StaticWorld"].objects["object92"] = WorldSet.newhor_floor({x=2700,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object92"].image)
 level.layers["StaticWorld"].objects["object93"] = WorldSet.newhor_floor({x=3300,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object93"].image)
 level.layers["StaticWorld"].objects["object94"] = WorldSet.newhor_floor({x=3900,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object94"].image)
 level.layers["StaticWorld"].objects["object95"] = WorldSet.newhor_floor({x=4500,y=1430})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object95"].image)
 level.layers["StaticWorld"].objects["object96"] = WorldSet.newhor_floor({x=4800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object96"].image)
 level.layers["StaticWorld"].objects["object97"] = WorldSet.newhor_floor({x=5400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object97"].image)
 level.layers["StaticWorld"].objects["object98"] = WorldSet.newhor_floor({x=6000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object98"].image)
 level.layers["StaticWorld"].objects["object99"] = WorldSet.newhor_floor({x=6600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object99"].image)
 level.layers["StaticWorld"].objects["object100"] = WorldSet.newhor_floor({x=7200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object100"].image)
 level.layers["StaticWorld"].objects["object101"] = WorldSet.newhor_floor({x=7800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object101"].image)
 level.layers["StaticWorld"].objects["object102"] = WorldSet.newhor_floor({x=8400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object102"].image)
 level.layers["StaticWorld"].objects["object103"] = WorldSet.newhor_floor({x=9000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object103"].image)
 level.layers["StaticWorld"].objects["object104"] = WorldSet.newhor_floor({x=9600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object104"].image)
 level.layers["StaticWorld"].objects["object105"] = WorldSet.newhor_floor({x=10200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object105"].image)
 level.layers["StaticWorld"].objects["object106"] = WorldSet.newhor_floor({x=10800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object106"].image)
 level.layers["StaticWorld"].objects["object107"] = WorldSet.newhor_floor({x=11400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object107"].image)
 level.layers["StaticWorld"].objects["object108"] = WorldSet.newhor_floor({x=12000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object108"].image)
 level.layers["StaticWorld"].objects["object109"] = WorldSet.newhor_floor({x=12600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object109"].image)
 level.layers["StaticWorld"].objects["object110"] = WorldSet.newhor_floor({x=13200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object110"].image)
 level.layers["StaticWorld"].objects["object111"] = WorldSet.newhor_floor({x=13800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object111"].image)
 level.layers["StaticWorld"].objects["object112"] = WorldSet.newhor_floor({x=14400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object112"].image)
 level.layers["StaticWorld"].objects["object113"] = WorldSet.newhor_floor({x=15000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object113"].image)
 level.layers["StaticWorld"].objects["object114"] = WorldSet.newhor_floor({x=15600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object114"].image)
 level.layers["StaticWorld"].objects["object115"] = WorldSet.newhor_floor({x=16200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object115"].image)
 level.layers["StaticWorld"].objects["object116"] = WorldSet.newhor_floor({x=16800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object116"].image)
 level.layers["StaticWorld"].objects["object117"] = WorldSet.newhor_floor({x=17400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object117"].image)
 level.layers["StaticWorld"].objects["object118"] = WorldSet.newhor_floor({x=18000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object118"].image)
 level.layers["StaticWorld"].objects["object119"] = WorldSet.newhor_floor({x=18600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object119"].image)
 level.layers["StaticWorld"].objects["object120"] = WorldSet.newhor_floor({x=19200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object120"].image)
 level.layers["StaticWorld"].objects["object121"] = WorldSet.newhor_floor({x=19800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object121"].image)
 level.layers["StaticWorld"].objects["object122"] = WorldSet.newhor_floor({x=20400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object122"].image)
 level.layers["StaticWorld"].objects["object123"] = WorldSet.newhor_floor({x=21000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object123"].image)
 level.layers["StaticWorld"].objects["object124"] = WorldSet.newhor_floor({x=21600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object124"].image)
 level.layers["StaticWorld"].objects["object125"] = WorldSet.newhor_floor({x=22200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object125"].image)
 level.layers["StaticWorld"].objects["object126"] = WorldSet.newhor_floor({x=22800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object126"].image)
 level.layers["StaticWorld"].objects["object127"] = WorldSet.newhor_floor({x=23400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object127"].image)
 level.layers["StaticWorld"].objects["object128"] = WorldSet.newhor_floor({x=24000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object128"].image)
 level.layers["StaticWorld"].objects["object129"] = WorldSet.newhor_floor({x=24600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object129"].image)
 level.layers["StaticWorld"].objects["object130"] = WorldSet.newhor_floor({x=25200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object130"].image)
 level.layers["StaticWorld"].objects["object131"] = WorldSet.newhor_floor({x=25800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object131"].image)
 level.layers["StaticWorld"].objects["object132"] = WorldSet.newhor_floor({x=26400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object132"].image)
 level.layers["StaticWorld"].objects["object133"] = WorldSet.newhor_floor({x=27000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object133"].image)
 level.layers["StaticWorld"].objects["object134"] = WorldSet.newhor_floor({x=27600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object134"].image)
 level.layers["StaticWorld"].objects["object135"] = WorldSet.newhor_floor({x=28200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object135"].image)
 level.layers["StaticWorld"].objects["object136"] = WorldSet.newhor_floor({x=28800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object136"].image)
 level.layers["StaticWorld"].objects["object137"] = WorldSet.newhor_floor({x=29400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object137"].image)
 level.layers["StaticWorld"].objects["object138"] = WorldSet.newhor_floor({x=30000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object138"].image)
 level.layers["StaticWorld"].objects["object139"] = WorldSet.newhor_floor({x=30600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object139"].image)
 level.layers["StaticWorld"].objects["object140"] = WorldSet.newhor_floor({x=31200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object140"].image)
 level.layers["StaticWorld"].objects["object141"] = WorldSet.newhor_floor({x=31800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object141"].image)
 level.layers["StaticWorld"].objects["object142"] = WorldSet.newhor_floor({x=32400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object142"].image)
 level.layers["StaticWorld"].objects["object143"] = WorldSet.newhor_floor({x=33000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object143"].image)
 level.layers["StaticWorld"].objects["object144"] = WorldSet.newhor_floor({x=33600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object144"].image)
 level.layers["StaticWorld"].objects["object145"] = WorldSet.newhor_floor({x=34200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object145"].image)
 level.layers["StaticWorld"].objects["object146"] = WorldSet.newhor_floor({x=34800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object146"].image)
 level.layers["StaticWorld"].objects["object147"] = WorldSet.newhor_floor({x=35400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object147"].image)
 level.layers["StaticWorld"].objects["object148"] = WorldSet.newhor_floor({x=36000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object148"].image)
 level.layers["StaticWorld"].objects["object149"] = WorldSet.newhor_floor({x=36600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object149"].image)
 level.layers["StaticWorld"].objects["object150"] = WorldSet.newhor_floor({x=37200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object150"].image)
 level.layers["StaticWorld"].objects["object151"] = WorldSet.newhor_floor({x=37800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object151"].image)
 level.layers["StaticWorld"].objects["object152"] = WorldSet.newhor_floor({x=38400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object152"].image)
 level.layers["StaticWorld"].objects["object153"] = WorldSet.newhor_floor({x=39000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object153"].image)
 level.layers["StaticWorld"].objects["object154"] = WorldSet.newhor_floor({x=39600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object154"].image)
 level.layers["StaticWorld"].objects["object155"] = WorldSet.newhor_floor({x=40200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object155"].image)
 level.layers["StaticWorld"].objects["object156"] = WorldSet.newhor_floor({x=40800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object156"].image)
 level.layers["StaticWorld"].objects["object157"] = WorldSet.newhor_floor({x=41400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object157"].image)
 level.layers["StaticWorld"].objects["object158"] = WorldSet.newhor_floor({x=42000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object158"].image)
 level.layers["StaticWorld"].objects["object159"] = WorldSet.newhor_floor({x=42600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object159"].image)
 level.layers["StaticWorld"].objects["object160"] = WorldSet.newhor_floor({x=43200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object160"].image)
 level.layers["StaticWorld"].objects["object161"] = WorldSet.newhor_floor({x=43800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object161"].image)
 level.layers["StaticWorld"].objects["object162"] = WorldSet.newhor_floor({x=44400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object162"].image)
 level.layers["StaticWorld"].objects["object163"] = WorldSet.newhor_floor({x=45000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object163"].image)
 level.layers["StaticWorld"].objects["object164"] = WorldSet.newhor_floor({x=45600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object164"].image)
 level.layers["StaticWorld"].objects["object165"] = WorldSet.newhor_floor({x=46200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object165"].image)
 level.layers["StaticWorld"].objects["object166"] = WorldSet.newhor_floor({x=46800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object166"].image)
 level.layers["StaticWorld"].objects["object167"] = WorldSet.newhor_floor({x=47400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object167"].image)
 level.layers["StaticWorld"].objects["object168"] = WorldSet.newhor_floor({x=48000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object168"].image)
 level.layers["StaticWorld"].objects["object169"] = WorldSet.newhor_floor({x=48600,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object169"].image)
 level.layers["StaticWorld"].objects["object170"] = WorldSet.newhor_floor({x=49200,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object170"].image)
 level.layers["StaticWorld"].objects["object171"] = WorldSet.newhor_floor({x=49800,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object171"].image)
 level.layers["StaticWorld"].objects["object172"] = WorldSet.newhor_floor({x=50400,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object172"].image)
 level.layers["StaticWorld"].objects["object173"] = WorldSet.newhor_floor({x=51000,y=1420})
 level.layers["StaticWorld"]:insert(level.layers["StaticWorld"].objects["object173"].image)
    scene:dispatchEvent({name='nextWave',nextWave = 1})
    level:insert(MonsterImageGroup)
    level:insert(level.layers["StaticWorld"])

    level:insert(level.layers["DynamicWorld"])

    level:insert(level.layers["InteractiveWorld"])

    level:insert(level.layers["Monster"])

    level:insert(level.layers["Supplement"])

    level:insert(level.layers["Image"])

    return level

end -- CreateLevel