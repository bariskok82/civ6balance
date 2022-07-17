INSERT INTO Terrain_YieldChanges(TerrainType, YieldType, YieldChange) VALUES			
		('TERRAIN_GRASS_MOUNTAIN', 'YIELD_PRODUCTION', 1),
		('TERRAIN_PLAINS_MOUNTAIN', 'YIELD_PRODUCTION', 1),
		('TERRAIN_DESERT_MOUNTAIN', 'YIELD_PRODUCTION', 1),
		('TERRAIN_TUNDRA_MOUNTAIN', 'YIELD_PRODUCTION', 1),
		('TERRAIN_SNOW_MOUNTAIN', 'YIELD_PRODUCTION', 1);	
INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES			
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_WORK_GRASS_MOUNTAIN_MEDIEVAL_BK'),
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_WORK_PLAINS_MOUNTAIN_MEDIEVAL_BK'),
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_WORK_DESERT_MOUNTAIN_MEDIEVAL_BK'),
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_WORK_TUNDRA_MOUNTAIN_MEDIEVAL_BK'),
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_WORK_SNOW_MOUNTAIN_MEDIEVAL_BK'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_WORK_GRASS_MOUNTAIN_MEDIEVAL_BK'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_WORK_PLAINS_MOUNTAIN_MEDIEVAL_BK'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_WORK_DESERT_MOUNTAIN_MEDIEVAL_BK'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_WORK_TUNDRA_MOUNTAIN_MEDIEVAL_BK'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_WORK_SNOW_MOUNTAIN_MEDIEVAL_BK');	
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES			
		('TRAIT_WORK_GRASS_MOUNTAIN_MEDIEVAL_BK', 'MODIFIER_PLAYER_ADJUST_TERRAIN_WORKABLE', 'PLAYER_IS_MEDIEVAL_ERA_BK'),
		('TRAIT_WORK_PLAINS_MOUNTAIN_MEDIEVAL_BK', 'MODIFIER_PLAYER_ADJUST_TERRAIN_WORKABLE', 'PLAYER_IS_MEDIEVAL_ERA_BK'),
		('TRAIT_WORK_DESERT_MOUNTAIN_MEDIEVAL_BK', 'MODIFIER_PLAYER_ADJUST_TERRAIN_WORKABLE', 'PLAYER_IS_MEDIEVAL_ERA_BK'),
		('TRAIT_WORK_TUNDRA_MOUNTAIN_MEDIEVAL_BK', 'MODIFIER_PLAYER_ADJUST_TERRAIN_WORKABLE', 'PLAYER_IS_MEDIEVAL_ERA_BK'),
		('TRAIT_WORK_SNOW_MOUNTAIN_MEDIEVAL_BK', 'MODIFIER_PLAYER_ADJUST_TERRAIN_WORKABLE', 'PLAYER_IS_MEDIEVAL_ERA_BK');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES			
		('TRAIT_WORK_GRASS_MOUNTAIN_MEDIEVAL_BK', 'Ignore', 1),
		('TRAIT_WORK_PLAINS_MOUNTAIN_MEDIEVAL_BK', 'Ignore', 1),
		('TRAIT_WORK_DESERT_MOUNTAIN_MEDIEVAL_BK', 'Ignore', 1),
		('TRAIT_WORK_TUNDRA_MOUNTAIN_MEDIEVAL_BK', 'Ignore', 1),
		('TRAIT_WORK_SNOW_MOUNTAIN_MEDIEVAL_BK', 'Ignore', 1),
		('TRAIT_WORK_GRASS_MOUNTAIN_MEDIEVAL_BK', 'TerrainType', 'TERRAIN_GRASS_MOUNTAIN'),
		('TRAIT_WORK_PLAINS_MOUNTAIN_MEDIEVAL_BK', 'TerrainType', 'TERRAIN_PLAINS_MOUNTAIN'),
		('TRAIT_WORK_DESERT_MOUNTAIN_MEDIEVAL_BK', 'TerrainType', 'TERRAIN_DESERT_MOUNTAIN'),
		('TRAIT_WORK_TUNDRA_MOUNTAIN_MEDIEVAL_BK', 'TerrainType', 'TERRAIN_TUNDRA_MOUNTAIN'),
		('TRAIT_WORK_SNOW_MOUNTAIN_MEDIEVAL_BK', 'TerrainType', 'TERRAIN_SNOW_MOUNTAIN');
UPDATE ModifierArguments SET Value = 1 WHERE ModifierId='TRAIT_PRODUCTION_MOUNTAIN' AND Name='Amount';

UPDATE Improvements SET PlunderType = 'PLUNDER_GOLD' WHERE ImprovementType = 'IMPROVEMENT_QUARRY';
UPDATE Improvements SET PlunderType = 'PLUNDER_HEAL' WHERE ImprovementType = 'IMPROVEMENT_PASTURE';
UPDATE Improvements SET PlunderType = 'PLUNDER_FAITH' WHERE ImprovementType = 'IMPROVEMENT_BEACH_RESORT';
UPDATE Improvements SET PlunderType = 'PLUNDER_FAITH' WHERE ImprovementType = 'IMPROVEMENT_CITY_PARK';

UPDATE Improvements SET PrereqTech='TECH_COMBUSTION' WHERE ImprovementType='IMPROVEMENT_OFFSHORE_OIL_RIG';
UPDATE Improvement_YieldChanges SET YieldChange=3 WHERE ImprovementType='IMPROVEMENT_OIL_WELL' AND YieldType='YIELD_PRODUCTION';
UPDATE Improvement_YieldChanges SET YieldChange=3 WHERE ImprovementType='IMPROVEMENT_OFFSHORE_OIL_RIG' AND YieldType='YIELD_PRODUCTION';

DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_FURS';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_CITRUS';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_HONEY';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_SPICES';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_SUGAR';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_SILK';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_COTTON';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_URANIUM';
DELETE FROM Resource_YieldChanges WHERE ResourceType='RESOURCE_ALUMINUM';
INSERT INTO Resource_YieldChanges(ResourceType, YieldType, YieldChange) VALUES
		('RESOURCE_FURS',		'YIELD_PRODUCTION',	1),
		('RESOURCE_FURS',		'YIELD_GOLD',		1),
		('RESOURCE_CITRUS',		'YIELD_FOOD',		1),
		('RESOURCE_CITRUS',		'YIELD_GOLD',		1),
		('RESOURCE_HONEY',		'YIELD_FOOD',		1),
		('RESOURCE_HONEY',		'YIELD_GOLD',		1),
		('RESOURCE_SPICES',		'YIELD_FOOD',		1),
		('RESOURCE_SPICES',		'YIELD_GOLD',		1),
		('RESOURCE_SUGAR',		'YIELD_FOOD',		1),
		('RESOURCE_COTTON',		'YIELD_PRODUCTION',	1),
		('RESOURCE_COTTON',		'YIELD_GOLD',		1),
		('RESOURCE_SILK',		'YIELD_GOLD',		3),
		('RESOURCE_AMBER',		'YIELD_GOLD',		1),
		('RESOURCE_COFFEE',		'YIELD_GOLD',		1),
		('RESOURCE_JADE',		'YIELD_GOLD',		1),
		('RESOURCE_MARBLE',		'YIELD_GOLD',		1),
		('RESOURCE_MERCURY',	'YIELD_GOLD',		1),
		('RESOURCE_TEA',		'YIELD_GOLD',		1),
		('RESOURCE_TURTLES',	'YIELD_GOLD',		1),
		('RESOURCE_DYES',		'YIELD_GOLD',		1),
		('RESOURCE_PEARLS',		'YIELD_GOLD',		1),
		('RESOURCE_TOBACCO',	'YIELD_GOLD',		1),
		('RESOURCE_INCENSE',	'YIELD_GOLD',		1),
		
		('RESOURCE_URANIUM',	'YIELD_SCIENCE',	1),
		('RESOURCE_URANIUM',	'YIELD_PRODUCTION',	1),
		('RESOURCE_ALUMINUM',	'YIELD_PRODUCTION',	2),
		('RESOURCE_IRON',		'YIELD_PRODUCTION',	1);

UPDATE Resource_Harvests SET PrereqTech = 'TECH_SAILING' WHERE ResourceType='RESOURCE_FISH';
UPDATE Resource_Harvests SET PrereqTech = 'TECH_SAILING' WHERE ResourceType='RESOURCE_CRABS';
INSERT INTO Resource_Harvests(ResourceType, YieldType, Amount, PrereqTech) VALUES
		('RESOURCE_FURS',		'YIELD_GOLD',		4,		'TECH_HORSEBACK_RIDING'),
		('RESOURCE_IVORY',		'YIELD_GOLD',		4,		'TECH_HORSEBACK_RIDING'),
		('RESOURCE_HONEY',		'YIELD_GOLD',		4,		'TECH_HORSEBACK_RIDING'),
		('RESOURCE_TRUFFLES',	'YIELD_GOLD',		4,		'TECH_HORSEBACK_RIDING'),
		('RESOURCE_PEARLS',		'YIELD_GOLD',		4,		'TECH_CELESTIAL_NAVIGATION'),
		('RESOURCE_TURTLES',	'YIELD_GOLD',		4,		'TECH_CELESTIAL_NAVIGATION'),
		('RESOURCE_WHALES',		'YIELD_GOLD',		4,		'TECH_CELESTIAL_NAVIGATION'),
		('RESOURCE_DIAMONDS',	'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_JADE',		'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_MERCURY',	'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_AMBER',		'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_SALT',		'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_SILVER',		'YIELD_GOLD',		4,		'TECH_IRON_WORKING'),
		('RESOURCE_GYPSUM',		'YIELD_GOLD',		4,		'TECH_CONSTRUCTION'),
		('RESOURCE_MARBLE',		'YIELD_GOLD',		4,		'TECH_CONSTRUCTION'),
		('RESOURCE_CITRUS',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_COCOA',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_COFFEE',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_COTTON',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_DYES',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_INCENSE',	'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_OLIVES',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_SILK',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_SPICES',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_SUGAR',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_TEA',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_TOBACCO',	'YIELD_GOLD',		4,		'TECH_CURRENCY'),
		('RESOURCE_WINE',		'YIELD_GOLD',		4,		'TECH_CURRENCY'),

		('RESOURCE_ALUMINUM',	'YIELD_PRODUCTION',	2,		'TECH_ADVANCED_FLIGHT'),
		('RESOURCE_COAL',		'YIELD_PRODUCTION',	2,		'TECH_STEAM_POWER'),
		('RESOURCE_HORSES',		'YIELD_PRODUCTION',	2,		'TECH_HORSEBACK_RIDING'),
		('RESOURCE_IRON',		'YIELD_PRODUCTION',	2,		'TECH_IRON_WORKING'),
		('RESOURCE_NITER',		'YIELD_PRODUCTION',	2,		'TECH_METAL_CASTING'),
		('RESOURCE_OIL',		'YIELD_PRODUCTION',	2,		'TECH_COMBUSTION'),
		('RESOURCE_URANIUM',	'YIELD_PRODUCTION',	2,		'TECH_NUCLEAR_FISSION');

--Fort--	
INSERT INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange) VALUES
		('IMPROVEMENT_FORT', 'YIELD_PRODUCTION', 1),
		('IMPROVEMENT_AIRSTRIP', 'YIELD_PRODUCTION', 2),
		('IMPROVEMENT_MISSILE_SILO', 'YIELD_PRODUCTION', 2);
UPDATE Improvements SET AirSlots = 2 WHERE ImprovementType = 'IMPROVEMENT_AIRSTRIP';

INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES			
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_FORT_GARRISON_CULTURE_JNR'),
		('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_FORT_GARRISON_PRODUCTION_JNR'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_FORT_GARRISON_CULTURE_JNR'),
		('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_FORT_GARRISON_PRODUCTION_JNR');
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('TRAIT_FORT_GARRISON_CULTURE_JNR', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', NULL),
		('FORT_GARRISON_CULTURE_JNR', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'PLOT_HAS_FORT_OR_UNIQUE_GARRISON_JNR'),
		('TRAIT_FORT_GARRISON_PRODUCTION_JNR', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', NULL),
		('FORT_GARRISON_PRODUCTION_JNR', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'PLOT_HAS_FORT_OR_UNIQUE_GARRISON_JNR');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('TRAIT_FORT_GARRISON_CULTURE_JNR', 'ModifierId', 'FORT_GARRISON_CULTURE_JNR'),
		('FORT_GARRISON_CULTURE_JNR', 'YieldType', 'YIELD_CULTURE'),
		('FORT_GARRISON_CULTURE_JNR', 'Amount', 1),
		('TRAIT_FORT_GARRISON_PRODUCTION_JNR', 'ModifierId', 'FORT_GARRISON_PRODUCTION_JNR'),
		('FORT_GARRISON_PRODUCTION_JNR', 'YieldType', 'YIELD_PRODUCTION'),
		('FORT_GARRISON_PRODUCTION_JNR', 'Amount', 1);

INSERT INTO Requirements(RequirementId, RequirementType) VALUES
		('REQUIRES_PLOT_HAS_FORT_OR_UNIQUE_JNR',	'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('REQUIRES_PLOT_HAS_FORT_JNR',				'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'),
		('REQUIRES_PLOT_HAS_ROMAN_FORT_JNR',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'),
		('REQUIRES_PLOT_HAS_ALCAZAR_JNR',			'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES'),
		('REQUIRES_PLOT_HAS_MAORI_PA_JNR',			'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('REQUIRES_PLOT_HAS_FORT_OR_UNIQUE_JNR',	'RequirementSetId',	'PLOT_HAS_FORT_OR_UNIQUE_JNR'),
		('REQUIRES_PLOT_HAS_FORT_JNR',				'ImprovementType',	'IMPROVEMENT_FORT'),
		('REQUIRES_PLOT_HAS_ROMAN_FORT_JNR',		'ImprovementType',	'IMPROVEMENT_ROMAN_FORT'),
		('REQUIRES_PLOT_HAS_ALCAZAR_JNR',			'ImprovementType',	'IMPROVEMENT_ALCAZAR'),
		('REQUIRES_PLOT_HAS_MAORI_PA_JNR',			'ImprovementType',	'IMPROVEMENT_MAORI_PA');
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('PLOT_HAS_FORT_OR_UNIQUE_GARRISON_JNR',	'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_FORT_OR_UNIQUE_JNR',				'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('PLOT_HAS_FORT_OR_UNIQUE_GARRISON_JNR',	'REQUIRES_PLOT_HAS_FORT_OR_UNIQUE_JNR'),
		('PLOT_HAS_FORT_OR_UNIQUE_GARRISON_JNR',	'REQUIRES_CITY_HAS_GARRISON_UNIT'),
		('PLOT_HAS_FORT_OR_UNIQUE_JNR',				'REQUIRES_PLOT_HAS_FORT_JNR'),
		('PLOT_HAS_FORT_OR_UNIQUE_JNR',				'REQUIRES_PLOT_HAS_ROMAN_FORT_JNR'),
		('PLOT_HAS_FORT_OR_UNIQUE_JNR',				'REQUIRES_PLOT_HAS_ALCAZAR_JNR'),
		('PLOT_HAS_FORT_OR_UNIQUE_JNR',				'REQUIRES_PLOT_HAS_MAORI_PA_JNR');
		
--Ski Resort--	
UPDATE Improvements SET Workable=1 WHERE ImprovementType='IMPROVEMENT_SKI_RESORT';
DELETE FROM Improvement_ValidTerrains WHERE ImprovementType='IMPROVEMENT_SKI_RESORT' AND TerrainType='TERRAIN_DESERT_MOUNTAIN';
INSERT INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange) VALUES ('IMPROVEMENT_SKI_RESORT', 'YIELD_GOLD', 0);
UPDATE Improvement_Tourism SET TourismSource='TOURISMSOURCE_GOLD' WHERE ImprovementType='IMPROVEMENT_SKI_RESORT' AND TourismSource='TOURISMSOURCE_APPEAL';

INSERT INTO Improvement_Adjacencies(ImprovementType, YieldChangeId) VALUES
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_GrassMountainAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_PlainsMountainAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_TundraMountainAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_SnowMountainAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_ForestAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_BeachResortAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_EntertainmentAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_WaterEntertainmentAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_CarnivalAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_WaterCarnivalAdjacency'),
		('IMPROVEMENT_SKI_RESORT',		'JNR_Ski_HockeyAdjacency');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired,	AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict) VALUES
		('JNR_Ski_GrassMountainAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, 'TERRAIN_GRASS_MOUNTAIN', NULL, NULL, NULL),
		('JNR_Ski_PlainsMountainAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, 'TERRAIN_PLAINS_MOUNTAIN', NULL, NULL, NULL),
		('JNR_Ski_TundraMountainAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, 'TERRAIN_TUNDRA_MOUNTAIN', NULL, NULL, NULL),
		('JNR_Ski_SnowMountainAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, 'TERRAIN_SNOW_MOUNTAIN', NULL, NULL, NULL),
		('JNR_Ski_ForestAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, 'FEATURE_FOREST', NULL, NULL),
		('JNR_Ski_BeachResortAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, 'IMPROVEMENT_BEACH_RESORT', NULL),
		('JNR_Ski_EntertainmentAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, NULL, 'DISTRICT_ENTERTAINMENT_COMPLEX'),
		('JNR_Ski_WaterEntertainmentAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, NULL, 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'),
		('JNR_Ski_CarnivalAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, NULL, 'DISTRICT_STREET_CARNIVAL'),
		('JNR_Ski_WaterCarnivalAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, NULL, 'DISTRICT_WATER_STREET_CARNIVAL'),
		('JNR_Ski_HockeyAdjacency', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, 'IMPROVEMENT_ICE_HOCKEY_RINK', NULL);