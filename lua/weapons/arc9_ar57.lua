AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - UC One-Offs"

SWEP.PrintName = "RAY-EPDW SD"
SWEP.TrueName = "AR-57 SD"

SWEP.Class = "Personal Defense Weapon"
SWEP.Trivia = {
    Manufacturer = "AR-57 LLC",
    Calibre = "5.57x28mm FN",
    Mechanism = "Blowback",
    Country = "United States of America",
    Year = "2008",
}

SWEP.Credits = {
	Author1 = "LP, Error; 422",
	Contact2 = "https://steamcommunity.com/id/YuzuAhiara/",
}

SWEP.Description = [[Esoteric personal defense weapon that mounts to an AR-15 lower receiver. It feeds from P90 magazines attached in parallel above the barrel, ejecting casings through what would normally be a magwell. 

Cursed? Blursed? 

You decide.]]

SWEP.StandardPresets = {
   
}
SWEP.ViewModel = "models/weapons/arccw/c_uc_ar57.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_uc_ar57.mdl"
SWEP.ViewModelFOV = 70

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-7.5, 1.5, -5.5),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.DefaultBodygroups = "0000000400000000000000"

SWEP.SpreadMultHipFire = 3
SWEP.RecoilMultHipFire = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 22 -- Damage done at point blank range
SWEP.DamageMin = 11 -- Damage done at maximum range

SWEP.ImpactForce = 1 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 393.701 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 393.701*10 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET
SWEP.PhysBulletMuzzleVelocity = 26850.4
SWEP.PhysBulletGravity = 1
SWEP.PhysBulletDrag = 1
SWEP.PenetrationDelta = 0.1
SWEP.ArmorPiercing = 26/100
SWEP.CurvedDamageScaling = false -- If true, damage will scale in a quadratic curve between RangeMin and RangeMax. If false, damage will scale linearly.
SWEP.HeadshotDamage = 1
SWEP.ChestDamage = 1
SWEP.StomachDamage = 1
SWEP.ArmDamage = 1
SWEP.LegDamage = 1
SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.8,
    [HITGROUP_RIGHTARM] = 0.8,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/droppedmags/m16_mag_30.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
    "weapons/arc9_ud/common/rifle_magdrop_1.ogg", "weapons/arc9_ud/common/rifle_magdrop_2.ogg", "weapons/arc9_ud/common/rifle_magdrop_3.ogg", "weapons/arc9_ud/common/rifle_magdrop_4.ogg"
}  -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1

-------------------------- FIREMODES

SWEP.RPM = 850

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1
    }
}
-- Use this hook to modify features of a firemode.
-- SWEP.Hook_P_ModifyFiremode = function(self, firemode) return firemode end

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.4 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1.5 * 0.25 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.FOV_RecoilAdd = 2 -- FOV to increase or decrease by.
SWEP.FOV_Recoil_TimeStart = 0.10 -- Peak
SWEP.FOV_Recoil_TimeEnd = 0.35 -- Until dropoff
-- https://wiki.facepunch.com/gmod/math.ease
SWEP.FOV_Recoil_FuncStart = math.ease.OutCirc -- Function to use
SWEP.FOV_Recoil_FuncEnd = math.ease.InCirc

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 / 1.25 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.75 + 1 -- How much the gun sways.

SWEP.SwayMultMidAir = 2
SWEP.SwayMultMove = 1.15
SWEP.SwayMultCrouch = 0.66
SWEP.SwayMultShooting = 1.2

SWEP.FreeAimRadiusSights = 1

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.31 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.34 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.806, -3, 0.975),
    Ang = Angle(0, 0, 4),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-2.815, 0, 0.9),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(30, -10, -20)
SWEP.SprintPos = Vector(3, 0, 0)

SWEP.ViewModelFOVBase = 75
SWEP.ActivePos = Vector(0.33, 0, 0)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 4)
SWEP.CustomizeSnapshotFOV = 110

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_suppressed" -- Used for some muzzle effects.

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
-------------------------- SOUNDS

local path = ")^weapons/arc9_ud/m16/"
local common = ")^weapons/arc9_ud/common/"
SWEP.ShootSoundFirst = path .. "fire_sup.ogg"
SWEP.ShootSound = {path .. "fire_auto_sup_2.ogg", path .. "fire_auto_sup_3.ogg"}
SWEP.DistantShootSoundS = common .. "sup_tail.ogg"
SWEP.DryFireSound = path .. "dryfire.ogg"
SWEP.Silencer = true

SWEP.FiremodeSound = "arc9/firemode.wav"

local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", path .. "rattle2.ogg", path .. "rattle3.ogg"}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    if elements["m16_mag_20"] then
        return anim .. "_20"
    elseif elements["m16_mag_40"] then
        return anim .. "_40"
    elseif elements["m16_mag_60"] then
        return anim .. "_60"
    elseif elements["m16_mag_100"] then
        return anim .. "_100"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 20 / 30,
        EventTable = {
            {s = common .. "raise.ogg", t = 0},
            {s = common .. "shoulder.ogg", t = 0.15},
            {s = ratel, t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 20 / 30,
        EventTable = {
            {s = ratel, t = 0},
            {s = common .. "cloth_6.ogg", t = 0.2},
        },
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },
    ["fire_usas"] = {
        Source = "fire_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
    },
    ["fire_empty_usas"] = {
        Source = "fire_empty_usas",
        Time = 20 / 30,
        ShellEjectAt = 0.01,
        EventTable = {
            {s = path .. "mech_last.ogg", t = 0}, -- Temporary
        },
    },

    ["fire_cycle"] = {
        Source = "fire",
        Time = 13 / 30,
    },

    ["fix"] = {
        Source = "fix",
        Time = 45 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 45 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_100"] = {
        Source = "fix_100",
        Time = 50 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },
    ["fix_empty_100"] = {
        Source = "fix_empty_100",
        Time = 50 / 30,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.15},
            {s = common .. "cloth_4.ogg",  t = 0.5},
            {s = path .. "chamber.ogg",  t = 0.55},
        },
    },

    ["cycle"] = {
        Source = "fix",
        Time = 36 / 30 * 0.7,
        ShellEjectAt = 0.3,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "chback.ogg",   t = 0.05},
            {s = common .. "cloth_4.ogg",  t = 0.2},
            {s = path .. "chamber.ogg",  t = 0.3},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 71 / 30,
        MinProgress = 0.7,
        LastClip1OutTime = 0.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {v1 = 0, v2 = 5000, vt = 0.1, t = 0},
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 0.3},
            {s = ratel, t = 0.5},
            {s = path .. "magin.ogg",    t = 1.05},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {v1 = 5000, v2 = 20000, vt = 0.1, t = 1.4},
            {s = common .. "grab.ogg", t = 1.81},
            {s = common .. "shoulder.ogg", t = 1.9},
            {v1 = 0, v2 = 5000, vt = 0.1, t = 1.9},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 79 / 30,
        MinProgress = 0.6,
        LastClip1OutTime = 0.7,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {v1 = 0, v2 = 5000, vt = 0.1, t = 0},
            {s = rottle,  t = 0.0},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.335},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 0.3},
            {s = ratel, t = 0.5},
            {s = path .. "magin.ogg",    t = 1.05},
            {v1 = 10000, v2 = 10000, vt = 0.1, t = 1.4},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.39},
            {s = path .. "boltdrop.ogg", t = 1.85},
            {v1 = 40000, v2 = 40000, vt = 0.2, t = 2},
            {s = ratel, t = 1.9},
            {s = common .. "grab.ogg", t = 2.125},
            {s = common .. "shoulder.ogg", t = 2.15},
            {v1 = 0, v2 = 5000, vt = 0.1, t = 2.15},
        },
    },
	["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-smg-03.ogg", t = 0},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 9999, -- maybe im dumb
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = false,
        LHIKIn = 0.4,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            {s = common .. "movement-smg-01.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-smg-04.ogg", t = 1.25},
        },
    },

}

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
    {
        PrintName = "RECEIVER",
        DefaultName = "RAI RC83 Upper",
        DefaultCompactName = "RC83UPPER",
        DefaultName_TrueName = "Colt M16A2 Upper",
        DefaultCompactName_TrueName = "A2UPPER",
        Category = "m16_upper",
		Installed = "m16_upper_a3",
        Bone = "weapon",
        Pos = Vector(0, -1.45, -4),
        Ang = Angle(90, 0, -90),
		Hidden = true,
    },
    {
        PrintName = "MOUNT",
        Category = "mount_m16ch",
        Bone = "m16_parent",
        ExcludeElements = {"flattop"},
        Pos = Vector(0, -3.15, 3.5),
        Ang = Angle(90, 0, -90),
		Scale = 1,
		Hidden = true,
    },
    {
        PrintName = "STOCK",
        DefaultName = "Stock",
        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),
        Category = {"m16_stock", "bt_stock"},
		InstalledEles = {"stock_231_tube"},
        Bone = "weapon",
        Pos = Vector(0, -0.4, -8.25),
        Ang = Angle(90, 0, -90),
		ActivateElements = {"stock_231_tube"},
		Hidden = true,
    },
    {
        PrintName = "BARREL",
        DefaultName = "RAI Ribbed 14.5\" Barrel",
        DefaultCompactName = "14.5\"RIB",
        DefaultName_TrueName = "AR-57 14.5 SBR\" Barrel",
        DefaultCompactName_TrueName = "14.5 SBR",
        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        Category = {"uc_ar57_barrel"},
        Bone = "weapon",
        Pos = Vector(0, -0.05, 10),
        Ang = Angle(90, 0, -90),
		Hidden = true,
    },
    {
        PrintName = "MAG",
        DefaultName = "Standard 50 Round",
        DefaultIcon = Material("arc9/def_att_icons/mag_ar.png"),
        Category = "m16_mag",
        Bone = "weapon",
        Pos = Vector(0, 4, 6),
        Ang = Angle(90, 0, -90),
		Hidden = true,
    },
    {
        PrintName = "AMMO",
        DefaultName = "Standard FMJ",
        DefaultIcon = Material("arc9/def_att_icons/ammotype.png"),
        Category = {"ammo", "ammo_assault"},
        Bone = "weapon",
        Pos = Vector(0, 6, 7),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Pistol Grips",
        DefaultName = "Factory Grip",
        DefaultIcon = Material("arc9/def_att_icons/grip_ar.png"),
        Category = "eft_ar15_pgrip", "eft_ar15_pgrip_m4","eft_ar15_pgripstock",
		ActivateElements = {"pgrip_stock"},
		HasGrip = true,
        Bone = "weapon",
        Pos = Vector(0, 1.2, -3.45),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "CLAMP",
        Category = "mount_barrel",
        ExcludeElements = {"nomount"},
        Bone = "m16_parent",
        Pos = Vector(0, -0.05, 26),
        Ang = Angle(90, 0, -90),
		Hidden = true,
    },
    {
        PrintName = "FS",
        DefaultIcon = Material("arc9/def_att_icons/fs.png"),
        Category = {"m16lp"},
        Bone = "m16_parent",
        ExcludeElements = {"fpw"},
        Pos = Vector(0, -3, 24),
        Ang = Angle(90, 0, -90),
		Hidden = true,
    },
    {
        PrintName = "Cosmetic",
        DefaultCompactName = "Skin",
        DefaultIcon = Material("arc9/def_att_icons/skin.png"),
        Bone = "weapon",
        Pos = Vector(0, 5, -5),
        Ang = Angle(0, 0, 0),
        Category = "universal_camo",
		Hidden = true,
    },
	{
        PrintName = "OPTICS",
        Category = "optic_picatinny",
        Pos = Vector(0, -1.45, -4),
        Ang = Angle(0, 0, 0),
        MergeSlots = {2},
        ExcludeElements = {"ris_optic"},
        InstalledElements = {"flattop_optic"},
		Scale = 1,
		Hidden = true,
    },
    {
        PrintName = "OPTICS",
        Category = {"rearsight_picatinny", "carryhandle_picatinny"},
        Pos = Vector(1, 0, -1),
		Scale = 1,
        Hidden = true,
    },
	{
        PrintName = "Pistol Grips",
        DefaultAttName = "Default",
        Category = {"eft_ar15_pgrip", "eft_ar15_pgripstock", "eft_ar15_pgrip_m4"},
        Bone = "Weapon",
        Pos = Vector(0, 0.4, 5.9),
        Ang = Angle(90, 0, 90),
		Scale = 1,
		Hidden = true,
	},
	{
        PrintName = "Ammo5.7x28",
        Category = {"eft_ammo_57"},
        Pos = Vector(0, 6, 10),
        Ang = Angle(90, 0, -90),
    },
	{
        PrintName = "ARC9 Optics",
        Bone = "weapon",
        Pos = Vector(0, -2.25, -3),
        Ang = Angle(90, 0, -90),
        Category = {"cod2019_optic","csgo_optic","eft_optic_large","eft_optic_medium","eft_optic_small"},
        InstalledElements = {"mount_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "Buffer tube",
        Bone = "weapon",
        Category = {"csgo_tube","eft_ar15_buffertube", "eft_ar_stock_a2"},
        Pos = Vector(0, -0.4, -5.87),
        Ang = Angle(90, 0, -90),
    },
	{
        PrintName = "Rear Sights",
        Bone = "weapon",
        Pos = Vector(0, -2.25, -4),
        Ang = Angle(90, 0, -90),
        Category = {"eft_rearsight"},
        InstalledElements = {"mount_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "Front Sights",
        Bone = "weapon",
        Pos = Vector(0, -2.25, 11),
        Ang = Angle(90, 0, -90),
        Category = {"eft_frontsight"},
        InstalledElements = {"mount_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "AK Stocks",
		Category = "ud_m16_stock","go_stock",
        Bone = "weapon",
        Category = {"eft_ak74m_stock", "eft_vityaz_stock", "eft_akm_stock", "eft_aks_stock"},
        Pos = Vector(0.6, -0.4, -6.1),
        Ang = Angle(0, 0, -90),
    },
	{
        PrintName = "AK Rear Sights",
        Bone = "weapon",
        Pos = Vector(-0.05, -2.4, -3.5),
        Ang = Angle(0, 0, -90),
        Category = {"eft_ak74_rearsight", "eft_rpk16_rearsight", "eft_akm_rearsight", "eft_vpo209_rearsight"},
        InstalledElements = {"mount_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "Tactical Left",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_cylinde","eft_tactical"},
		Bone = "weapon",
        Pos = Vector(-1, -0.5, 10.1),
        Ang = Angle(90, 180, -180),
		InstalledElements = {"mount_tactical"},
    },
	{
        PrintName = "Tactical right",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_cylinde","eft_tactical"},
		Bone = "weapon",
        Pos = Vector(1, -0.6, 10.1),
        Ang = Angle(90, 180, 0),
		InstalledElements = {"mount_tactical"},
    },
	{
        PrintName = "Tactical Top",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_cylinde", "eft_tactical"},
		Bone = "weapon",
        Pos = Vector(0, -2, 10.7),
        Ang = Angle(90, 90, -180),
		InstalledElements = {"mount_tactical"},
    },
	{
        PrintName = "Tactical Bottom",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_cylinde","eft_tactical"},
		Bone = "weapon",
        Pos = Vector(0, 0.3, 10.1),
        Ang = Angle(90, 90, 0),
		InstalledElements = {"mount_tactical"},
    },
	{
        PrintName = "ARC9 Front Optics",
        Bone = "weapon",
        Pos = Vector(0, -2.25, 11),
        Ang = Angle(90, 0, -90),
        Category = {"cod2019_optic","csgo_optic","eft_optic_large","eft_optic_medium","eft_optic_small"},
        InstalledElements = {"mount_optic"},
        CorrectiveAng = Angle(0, 0, 0),
		ExtraSightDistance = 14,
		Scale = 1,
    },
	{
        PrintName = "Grips",
        Category = {"cod2019_grip","grip"},
        Pos = Vector(0, 0.4, 6),
        Ang = Angle(90, 0, 90),
		Bone = "Weapon",
        Icon_Offset = Vector(0, 0, 0),
    },
		{
        PrintName = "AK Grips",
        Category = {"eft_ak_grip"},
        Pos = Vector(0, 1.2, -3.45),
        Ang = Angle(0, 0, -90),
		Bone = "Weapon",
        Icon_Offset = Vector(0, 0, 0),
    },
	
}