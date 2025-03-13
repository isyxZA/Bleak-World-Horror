ZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- name of the zone for the zone type ZombiesType (in worldzed)
ZombiesZoneDefinition.Wedding = {
	-- you have a 50% chance of having this zone spawning, to bring more randomness to the world
	chanceToSpawn = 50,
	-- max 1 wedding per map
	toSpawn = 1,
	-- Mandatory zed
	WeddingDress = {
		-- name of the outfit
		name="Naked",
		-- number to spawn
		toSpawn=1,
		-- The wedding dress is only on female
		gender="female",
		-- we will be forced to spawn this one
		mandatory="true",
		-- need to be in that exact room
		room="church",
	},
	Groom = {
		name="Naked",
		toSpawn=1,
		gender="male",
		mandatory="true",
		room="church",
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
		room="church",
	},
	-- Others
	Classy = {
		name="Naked",
		-- Chance at 75 means 75% of the zombies spawning (except mandatory) will have this outfit, the other 10% will have generic, the total chance of them all should be <= 100
		chance=75,
		-- no gender selected because we have Classy outfit for both gender
	},
	Waiter = {
		name="Naked",
		chance=15,
	}
};

ZombiesZoneDefinition.TrailerPark = {
	Veteran = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Redneck = {
		name="Naked",
		chance=35,
-- 		chance=65,
	},
	Thug = {
		name="Naked",
		chance=15,
		gender="male",
	},
-- 	Goth = {
-- 		name="Goth",
-- 		chance=1,
-- 	},
	Rocker = {
		name="Naked",
		chance=5,
	},
	Trucker = {
		name="Naked",
		chance=5,
	},
-- 	ExterminatorSuited = {
-- 		name="ExterminatorSuited",
-- 		chance=1,
-- 	},
	Retiree = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.Pharmacist = {
	-- We ensure we have at least one pharmacist
	PharmacistM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Pharmacist = {
		name="Naked",
		chance=30,
	},
}

ZombiesZoneDefinition.Bowling = {
	Bowling = {
		name="Naked",
		chance=90,
	},
}

ZombiesZoneDefinition.Doctor = {
	DoctorM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Doctor = {
		name="Naked",
		chance=7,
	},
	Nurse = {
		name="Naked",
		chance=15,
	},
}

ZombiesZoneDefinition.Spiffo = {
	Spiffo = {
		name="Naked",
		chance=1,
	},
	Waiter_SpiffoM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Spiffo = {
		name="Naked",
		chance=15,
	},
	Cook_SpiffosM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="spiffoskitchen",
	},
	Cook_Spiffos = {
		name="Naked",
		chance=50,
		room="spiffoskitchen",
	},
}

ZombiesZoneDefinition.Jays = {
-- 	Jay = {
-- 		name="Jay",
-- 		chance=1,
-- 	},
	Waiter_JaysM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Jays = {
		name="Naked",
		chance=15,
	},
	Cook_JaysM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="jayschicken_kitchen",
	},
	Cook_Jays = {
		name="Naked",
		chance=50,
		room="jayschicken_kitchen",
	},
}

ZombiesZoneDefinition.Gigamart = {
	GigaMart_EmployeeM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	GigaMart_Employee = {
		name="Naked",
		chance=20,
	},
	Cook_GenericM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="gigamartkitchen",
	},
	Cook_Generic = {
		name="Naked",
		chance=50,
		room="gigamartkitchen",
	},
	OfficeWorkerSkirt = {
		name="Naked",
		gender="female",
		chance=20,
		room="office",
	},
	OfficeWorker = {
		name="Naked",
		gender="male",
		chance=20,
		room="office",
	},
}

ZombiesZoneDefinition.PizzaWhirled = {
	Waiter_PizzaWhirledM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_PizzaWhirled = {
		name="Naked",
		chance=15,
	},
	Cook_GenericM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Cook_Generic = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.Dinner = {
	Waiter_DinerM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Diner = {
		name="Naked",
		chance=15,
	},
	Cook_GenericM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Cook_Generic = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.PileOCrepe = {
	Waiter_PileOCrepeM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_PileOCrepe = {
		name="Naked",
		chance=15,
	},
	ChefM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Chef = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.Coffeeshop = {
	Waiter_RestaurantM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=15,
	},
	ChefM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Chef = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.SeaHorse = {
	Waiter_RestaurantM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=15,
	},
	ChefM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Chef = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.Restaurant = {
	Waiter_RestaurantM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=15,
	},
	ChefM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		room="restaurantkitchen",
	},
	Chef = {
		name="Naked",
		chance=50,
		room="restaurantkitchen",
	},
}

ZombiesZoneDefinition.Survivalist = {
	Survivalist = {
		name="Survivalist",
		chance=10,
	},
	Hunter = {
		name="Hunter",
		chance=10,
	},
}

ZombiesZoneDefinition.StreetPoor = {
	Hobbo = {
		name="Hobbo",
		chance=15,
	},
	Punk = {
		name="Naked",
		chance=15,
	},
	Biker = {
		name="Naked",
		chance=15,
	},
	Bandit = {
		name="Bandit",
		chance=5,
	},
	Backpacker = {
		name="Naked",
		chance=1,
	},
	Evacuee = {
		name="Naked",
		chance=1,
	},
	GuitarGuy = {
		name="Naked",
		chance=1,
	},
	Rocker = {
		name="Naked",
		chance=5,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Trucker = {
		name="Naked",
		chance=5,
	},
	Sanitation = {
		name="Naked",
		chance=1,
	},
-- 	ExterminatorSuited = {
-- 		name="ExterminatorSuited",
-- 		chance=1,
-- 	},
}

ZombiesZoneDefinition.Rocker = {
	Student = {
		name="Naked",
		chance=10,
	},
	Punk = {
		name="Naked",
		chance=20,
-- 		chance=40,
	},
	Rocker = {
		name="Naked",
		chance=20,
	},
	Goth = {
		name="Goth",
		chance=5,
	},
	Grunge = {
		name="Naked",
		chance=20,
	},
	Young = {
		name="Naked",
		chance=10,
	},
}

-- TODO: Not sure yet
ZombiesZoneDefinition.Theatre = {

}

ZombiesZoneDefinition.Shelter = {
	Hobbo = {
		name="Hobbo",
		chance=50,
	},
	Punk = {
		name="Naked",
		chance=20,
	},
	Backpacker = {
		name="Backpacker",
		chance=0.25,
	},
	Evacuee = {
		name="Naked",
		chance=1,
	},
}

-- TODO: 2 team (blue/red?)
ZombiesZoneDefinition.LaserTag = {

}

--[[ FIXME: Defined above, was this for something else?
ZombiesZoneDefinition.StreetPoor = {
	Tourist = {
		name="Tourist",
		chance=10,
	},
	Golfer = {
		name="Golfer",
		chance=10,
	},
	Classy = {
		name="Classy",
		chance=20,
	},
}
--]]

ZombiesZoneDefinition.Rich = {
	Tourist = {
		name="Naked",
		chance=20,
	},
	Golfer = {
		name="Naked",
		chance=15,
	},
	Classy = {
		name="Naked",
		chance=30,
-- 		chance=40,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	Trader = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.HotelRich = {
	Tourist = {
		name="Naked",
		chance=20,
	},
	Golfer = {
		name="Naked",
		chance=15,
	},
	Classy = {
		name="Naked",
		chance=20,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.BaseballFan = {
	BaseballFan_Z = {
		name="Naked",
		chance=20,
	},
	BaseballFan_Rangers = {
		name="Naked",
		chance=20,
	},
	BaseballFan_KY = {
		name="Naked",
		chance=20,
	},
}

-- TODO: how bad can i do an "old zombies" outfit?
ZombiesZoneDefinition.NursingHome = {
	Classy = {
		name="Naked",
		chance=20,
	},
	Nurse = {
		name="Naked",
		chance=15,
	},
	Bathrobe = {
		name="Bathrobe",
		chance=10,
	},
	HospitalPatient = {
		name="Naked",
		chance=10,
	},
	Retiree = {
		name="Naked",
		chance=20,
	},
	Resident = {
		name="Naked",
		chance=20,
	},
}

-- TODO: gonna need bit more clothing, but should be kinda like the nightclub
ZombiesZoneDefinition.Young = {
	ClubGoer = {
		name="Naked",
		chance=20,
	},
	Goth = {
		name="Goth",
		chance=1,
	},
	Varsity = {
		name="Naked",
		chance=20,
	},
	Thug = {
		name="Naked",
		chance=5,
		gender="male",
	},
	Gaudy = {
		name="Naked",
		chance=20,
	},
	MannequinLeather = {
		name="Naked",
		chance=1,
	},
}
ZombiesZoneDefinition.Nightclub = {
	ClubGoer = {
		name="Naked",
		chance=20,
	},
	Goth = {
		name="Goth",
		chance=10,
	},
	Thug = {
		name="Naked",
		chance=5,
		gender="male",
	},
	Tourist = {
		name="Naked",
		chance=5,
	},
	Varsity = {
		name="Naked",
		chance=5,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	MannequinLeather = {
		name="MannequinLeather",
		chance=1,
	},
-- 	CostumeVampire = {
-- 		name="CostumeVampire",
-- 		chance=1,
-- 	},
}

-- TODO: checkout screenshot mb
ZombiesZoneDefinition.Tennis = {

}


ZombiesZoneDefinition.VariousFoodMarket = {
	Waiter_MarketM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Market = {
		name="Naked",
		chance=15,
	},
}

ZombiesZoneDefinition.FarmingStore = {
	Waiter_MarketM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
	Waiter_Market = {
		name="Naked",
		chance=10,
	},
	Farmer = {
		name="Naked",
		chance=10,
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Athletic = {
	FitnessInstructor = {
		name="Naked",
		chance=70,
	},
}

ZombiesZoneDefinition.StreetSports = {
	StreetSports = {
		name="Naked",
		chance=80,
	},
}

-- not used yet
ZombiesZoneDefinition.Pony = {
	Jockey01 = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Jockey02 = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Jockey03 = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Jockey06 = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Jockey04 = {
		name="Naked",
		chance=10,
		gender="female",
	},
	Jockey05 = {
		name="Naked",
		chance=10,
		gender="female",
	},
}

ZombiesZoneDefinition.Baseball = {
	BaseballPlayer_KY = {
		name="Naked",
		chance=20,
	},
	BaseballPlayer_Z = {
		name="Naked",
		chance=20,
	},
	BaseballPlayer_Rangers = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.Farm = {
	Farmer = {
		name="Naked",
		chance=80,
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.CarRepair = {
	Mechanic = {
		name="Naked",
		chance=15,
		gender="male",
	},
	MetalWorker = {
		name="Naked",
		chance=15,
		gender="male",
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Fossoil = {
	Fossoil = {
		name="Naked",
		chance=15,
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Gas2Go = {
	Gas2Go = {
		name="Naked",
		chance=15,
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.ThunderGas = {
	ThunderGas = {
		name="Naked",
		chance=15,
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.McCoys = {
	maleChance = 80,
	McCoys = {
		name="Naked",
		chance=50,
		gender="male",
	},
	Foreman = {
		name="Naked",
		chance=10,
		gender="male",
	},
	OfficeWorkerSkirt = {
		name="Naked",
		gender="female",
		chance=30,
	},
	OfficeWorker = {
		name="Naked",
		gender="male",
		chance=5,
	},
	Trucker = {
		name="Naked",
		chance=5,
	},
}

ZombiesZoneDefinition.Factory = {
	OfficeWorkerSkirt = {
		name="Naked",
		gender="female",
		toSpawn=1,
	},
	OfficeWorker = {
		name="Naked",
		gender="male",
		toSpawn=1,
	},
	ConstructionWorker = {
		name="Naked",
		chance=50,
		gender="male",
	},
	Foreman = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Mechanic = {
		name="Naked",
		chance=10,
		gender="male",
	},
	MetalWorker = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.ConstructionSite = {
	ConstructionWorker = {
		name="Naked",
		chance=60,
		gender="male",
	},
	Foreman = {
		name="Naked",
		chance=20,
		gender="male",
	},
	MetalWorker = {
		name="Naked",
		chance=5,
		gender="male",
	},
	Trucker = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Offices = {
	OfficeWorkerSkirt = {
		name="Naked",
		chance=35,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=35,
		gender="male",
		beardStyles="null:80",
	},
	Trader = {
		name="Naked",
		chance=15,
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.Bank = {
	OfficeWorkerSkirt = {
		name="Naked",
		chance=25,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=25,
		gender="male",
		beardStyles="null:80",
	},
	Trader = {
		name="Naked",
		chance=10,
		beardStyles="null:80",
	},
}

ZombiesZoneDefinition.SwimmingPool = {
	Swimmer = {
		name="Naked",
		chance=100,
	}
}

ZombiesZoneDefinition.FancyHotel = {
	Tourist = {
		name="Naked",
		chance=40,
	},
	Bathrobe = {
		name="Bathrobe",
		chance=10,
	},
	Swimmer = {
		name="Naked",
		chance=10,
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=5,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
}

ZombiesZoneDefinition.CountryClub = {
	Tourist = {
		name="Naked",
		chance=20,
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=10,
	},
	Golfer = {
		name="Naked",
		chance=15,
	},
	Classy = {
		name="Naked",
		chance=20,
	},
	Gym = {
		name="Naked",
		chance=150,
		room="gym",
	},
	Ballroom = {
		name="Naked",
		chance=150,
		room="ballroom",
	},
	Classy = {
		name="Naked",
		chance=150,
		room="ballroom",
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.Spa = {
	Tourist = {
		name="Naked",
		chance=20,
	},
	Bathrobe = {
		name="Naked",
		chance=30,
	},
	Swimmer = {
		name="Swimmer",
		chance=15,
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=10,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=10,
	},
}

ZombiesZoneDefinition.Golf = {
	Golfer = {
		name="Naked",
		chance=40,
	},
	Tourist = {
		name="Naked",
		chance=20,
	},
	Waiter_Restaurant = {
		name="Naked",
		chance=5,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=20,
	},
}

ZombiesZoneDefinition.Police = {
	Police = {
		name="Police",
		chance=40,
	},
	Detective = {
		name="Naked",
		chance=10,
	},
	OfficeWorkerSkirt = {
		name="Naked",
		chance=15,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=15,
		gender="male",
		beardStyles="null:80",
	},
	Agent = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.PoliceState = {
	Police = {
		name="Naked",
		chance=40,
	},
	Detective = {
		name="Naked",
		chance=1,
	},
	OfficeWorkerSkirt = {
		name="Naked",
		chance=15,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=15,
		gender="male",
		beardStyles="null:80",
	},
	Agent = {
		name="Naked",
		chance=10,
	},
}

ZombiesZoneDefinition.Prison = {
	-- Gonna force male zombies in prison
	maleChance = 80,
	Doctor = {
		name="Naked",
		chance=2,
	},
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	Doctor2 = {
		name="Naked",
		chance=20,
		room="medicalstorage",
	},
	Nurse = {
		name="Naked",
		chance=30,
		room="medicalstorage",
	},
	Waiter_Diner = {
		name="Naked",
		chance=2,
	},
	PrisonGuard = {
		name="Naked",
		chance=20,
		gender="male",
	},
	OfficeWorkerSkirt = {
		name="Naked",
		gender="female",
		chance=30,
		room="office",
	},
	OfficeWorker = {
		name="Naked",
		gender="male",
		chance=30,
		room="office",
		beardStyles="null:80",
	},
	Agent = {
		name="Naked",
		chance=1,
		room="office",
	},
	Security = {
		name="Naked",
		gender="male",
		chance=100,
		room="security",
	},
	Inmate = {
		name="Naked",
		chance=76,
		gender="male",
		room="prisoncells;hall;cafeteria;classroom;laundry;janitor",
	},
	-- this one is used for lower chance of inmate in some rooms
	InmateLowerZone = {
		name="Naked",
		chance=30,
		gender="male",
		room="bathroom;kitchen;medicalstorage;library",
	},
	Naked = {
		name="Naked",
		chance=50,
		gender="male",
		room="bathroom",
	},
	Cook_Generic = {
		name="Naked",
		chance=30,
		gender="male",
		room="kitchen",
	},
}

ZombiesZoneDefinition.FireDept = {
	Fireman = {
		name="Naked",
		chance=80,
	},
}

ZombiesZoneDefinition.Army = {
	ArmyInstructorM = {
		name="Naked",
		toSpawn=1,
		mandatory="true",
		gender="male",
	},
	ArmyInstructor = {
		name="Naked",
		chance=2,
		gender="male",
	},
	Ghillie = {
		name="Ghillie",
		chance=2,
		gender="male",
	},
	ArmyCamoDesert = {
		name="Naked",
		chance=5
	},
	ArmyCamoGreen = {
		name="Naked",
		chance=5,
	},
	Agent = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.SecretBase = {
	Priest = {
		name="Priest",
		toSpawn=1,
		gender="male",
		mandatory="true",
	},
	ArmyInstructor = {
		name="Naked",
		chance=5,
		gender="male",
	},
	ArmyCamoGreen = {
		name="Naked",
		chance=20,
	},
	OfficeWorkerSkirt = {
		name="Naked",
		chance=10,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Doctor = {
		name="Naked",
		chance=10,
	},
	Agent = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Bar = {
	Biker = {
		name="Naked",
		chance=30,
-- 		chance=25,
	},
	Veteran = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Redneck = {
		name="Naked",
		chance=35,
-- 		chance=50,
	},
	Varsity = {
		name="Naked",
		chance=5,
	},
	Rocker = {
		name="Naked",
		chance=5,
	},
	Trucker = {
		name="Naked",
		chance=5,
	},
	Gaudy = {
		name="Naked",
		chance=1,
	},
	Thug = {
		name="Naked",
		chance=5,
		gender="male",
	},
}

ZombiesZoneDefinition.Beach = {
	Tourist = {
		name="Naked",
		chance=15,
-- 		chance=30,
	},
	Swimmer = {
		name="Naked",
		chance=65,
	},
	Backpacker = {
		name="Backpacker",
		chance=5,
	},
	ClubGoer = {
		name="Naked",
		chance=5,
	},
	Gaudy = {
		name="Naked",
		chance=5,
	},
}

ZombiesZoneDefinition.School = {
	HonorStudent = {
		name="Naked",
		chance=5,
	},
	ShellSuit_Black = {
		name="Naked",
		chance=3,
	},
	ShellSuit_Blue = {
		name="Naked",
		chance=3,
	},
	ShellSuit_Green = {
		name="Naked",
		chance=3,
	},
	ShellSuit_Pink = {
		name="Naked",
		chance=3,
	},
	ShellSuit_Teal = {
		name="Naked",
		chance=3,
	},
	Young = {
		name="Naked",
		chance=15,
	},
	Student = {
		name="Naked",
		chance=50,
	},
	Teacher = {
		name="Naked",
		chance=15,
	},
	Varsity = {
		name="Naked",
		chance=5,
	},
}

ZombiesZoneDefinition.University = {
	HonorStudent = {
		name="Naked",
		chance=5,
	},
	Young = {
		name="Naked",
		chance=15,
	},
	Student = {
		name="Naked",
		chance=40,
-- 		chance=50,
	},
	Teacher = {
		name="Naked",
		chance=15,
	},
	Backpacker = {
		name="Backpacker",
		chance=1,
	},
	Hobbyist = {
		name="Naked",
		chance=1,
	},
	Punk = {
		name="Naked",
		chance=1,
	},
	GuitarGuy = {
		name="Naked",
		chance=1,
	},
	ClubGoer = {
		name="Naked",
		chance=1,
	},
	Goth = {
		name="Naked",
		chance=1,
	},
	Varsity = {
		name="Naked",
		chance=5,
	},
	Grunge = {
		name="Naked",
		chance=5,
	},
	IT= {
		name="Naked",
		toSpawn=1,
		mandatory="true",
	},
}

ZombiesZoneDefinition.Boxing = {
	chanceToSpawn = 100,
	RedBoxer = {
		name="Naked",
		toSpawn=1,
		gender="male",
	},
	BlueBoxer = {
		name="Naked",
		toSpawn=1,
		gender="male",
	},
	Classy = {
		name="Naked",
		chance=75,
	},
	Retiree = {
		name="Naked",
		chance=10,
	},
};

ZombiesZoneDefinition.Nav = {
	Backpacker = {
		name="Backpacker",
		chance=0.25,
	},
	Evacuee = {
		name="Naked",
		chance=0.25,
	},
	Trucker = {
		name="Naked",
		chance=0.25,
	},
	Sanitation = {
		name="Naked",
		chance=0.25,
	},
}



ZombiesZoneDefinition.CornMaze = {
	HonorStudent = {
		name="Naked",
		chance=5,
	},
	Young = {
		name="Naked",
		chance=15,
	},
	Student = {
		name="Naked",
		chance=40,
-- 		chance=50,
	},
	Hobbyist = {
		name="Naked",
		chance=1,
	},
	Varsity = {
		name="Naked",
		chance=5,
	},
	Grunge = {
		name="Naked",
		chance=1,
	},
	CostumeScarecrow = {
		name="Naked",
		chance=5,
	},
	Retiree = {
		name="Naked",
		chance=10,
	},
}

-- Wild West! Yee Haw!
ZombiesZoneDefinition.Cowboy = {
	CostumeWildWestBoss = {
		name="Naked",
		chance=1,
	},
	CostumeWildWestClown = {
		name="Naked",
		chance=4,
	},
	CostumeWildWestCowpoke = {
		name="Naked",
		chance=10,
	},
	CostumeWildWestFancy = {
		name="Naked",
		chance=10,
	},
	CostumeWildWestMayor = {
		name="Naked",
		chance=5,
	},
	CostumeWildWestMountainPerson = {
		name="Naked",
		chance=5,
	},
	CostumeWildWestOutlaw = {
		name="Naked",
		toSpawn=10,
	},


	Young = {
		name="Naked",
		chance=10,
	},
	Student = {
		name="Naked",
		chance=10,
-- 		chance=50,
	},
	Varsity = {
		name="Naked",
		chance=1,
	},
	Tourist = {
		name="Naked",
		chance=10,
	},
	Retiree = {
		name="Naked",
		chance=10,
	},
}


ZombiesZoneDefinition.Stripclub = {
	Gaudy = {
		name="Naked",
		chance=25,
	},
	Trucker = {
		name="Naked",
		chance=15,
	},
	CowboyStripper = {
		name="Naked",
		chance=1,
	},
	FiremanStripper = {
		name="Naked",
		chance=1,
	},
	PoliceStripper = {
		name="Naked",
		chance=1,
	},
	FiremanStripper = {
		name="Naked",
		chance=1,
	},
	FiremanStripper = {
		name="StripperNaked",
		chance=1,
	},
	FiremanStripper = {
		name="Naked",
		chance=1,
	},
	WaiterStripper = {
		name="Naked",
		chance=1,
	},
}

ZombiesZoneDefinition.Mob = {
	Classy = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Clubgoer = {
		name="Naked",
		chance=15,
		gender="female",
	},
	Gaudy = {
		name="Naked",
		chance=15,
	},
	Mob = {
		name="Naked",
		chance=15,
		gender="male",
	},
	MobCasual = {
		name="Naked",
		chance=15,
		gender="male",
	},
	Thug = {
		name="Naked",
		chance=15,
		gender="male",
	},
	Waiter_Classy = {
		name="Naked",
		chance=15,
	}
}

ZombiesZoneDefinition.Cultists = {
	Cultist = {
		name="Cultist",
		chance=100,
	},
}

ZombiesZoneDefinition.SecretLab = {
	ArmyInstructor = {
		name="Naked",
		chance=5,
		gender="male",
	},
	ArmyCamoGreen = {
		name="Naked",
		chance=20,
	},
	OfficeWorkerSkirt = {
		name="Naked",
		chance=10,
		gender="female",
	},
	OfficeWorker = {
		name="Naked",
		chance=10,
		gender="male",
	},
	Doctor = {
		name="Naked",
		chance=10,
	},
	Agent = {
		name="Naked",
		chance=5,
	},
	HazardSuit = {
		name="Naked",
		chance=20,
	},
}

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
ZombiesZoneDefinition.Default = {};

--table.insert(ZombiesZoneDefinition.Default,{name = "FitnessInstructor", chance=20000});
table.insert(ZombiesZoneDefinition.Default,{name = "Naked", chance=50, gender="male"});
table.insert(ZombiesZoneDefinition.Default,{name = "Naked", chance=50, gender="female"});


