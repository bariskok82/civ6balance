UPDATE ModifierArguments SET Value=2 WHERE ModifierId='MONUMENT_LOYALTY' AND Name='Amount';
UPDATE ModifierArguments SET Value=1 WHERE ModifierId='LIGHTHOUSE_COASTAL_CITY_HOUSING' AND Name='Amount';
INSERT INTO Building_YieldChanges(BuildingType, YieldType, YieldChange) VALUES			
		('BUILDING_SHIPYARD', 							'YIELD_PRODUCTION',					1);
UPDATE Modifiers SET SubjectRequirementSetId='PLOT_HAS_REEF_BK' WHERE ModifierId='SHIPYARD_UNIMPROVED_COAST_PRODUCTION';
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('PLOT_HAS_REEF_BK', 							'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('PLOT_HAS_REEF_BK',							'REQUIRES_PLOT_HAS_REEF');
	
UPDATE Buildings SET Housing=1 WHERE BuildingType='BUILDING_HANGAR';
UPDATE Buildings SET Housing=1 WHERE BuildingType='BUILDING_AIRPORT';
UPDATE Buildings SET Description='LOC_BUILDING_GRANARY_DESCRIPTION' WHERE BuildingType='BUILDING_GRANARY';
UPDATE Buildings SET Description='LOC_BUILDING_SEWER_DESCRIPTION' WHERE BuildingType='BUILDING_SEWER';
UPDATE Buildings SET Description='LOC_BUILDING_UNIVERSITY_DESCRIPTION' WHERE BuildingType='BUILDING_UNIVERSITY';
UPDATE Buildings SET Housing=3 WHERE BuildingType='BUILDING_SEWER';
UPDATE Buildings SET Entertainment=1 WHERE BuildingType='BUILDING_SEWER';
UPDATE Building_YieldChanges SET YieldChange=2 WHERE BuildingType='BUILDING_FERRIS_WHEEL' AND YieldType='YIELD_CULTURE';
UPDATE ModifierArguments SET Value=4 WHERE ModifierId='STADIUM_20_POPULATION_TOURISM' AND Name='Amount';
UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_MUSEUM_ART' AND YieldType='YIELD_CULTURE';
UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_MUSEUM_ARTIFACT' AND YieldType='YIELD_CULTURE';
UPDATE Building_YieldChanges SET YieldChange=7 WHERE BuildingType='BUILDING_BANK' AND YieldType='YIELD_GOLD';
UPDATE Building_YieldChanges SET YieldChange=5 WHERE BuildingType='BUILDING_STOCK_EXCHANGE' AND YieldType='YIELD_GOLD';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=9 WHERE BuildingType='BUILDING_STOCK_EXCHANGE' AND YieldType='YIELD_GOLD';
DELETE FROM Buildings_XP2 WHERE BuildingType='BUILDING_AIRPORT';
DELETE FROM Building_YieldChangesBonusWithPower WHERE BuildingType='BUILDING_AIRPORT';
UPDATE Buildings_XP2 SET RequiredPower=2 WHERE BuildingType='BUILDING_FOOD_MARKET';
UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_FOOD_MARKET' AND YieldType='YIELD_FOOD';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=5 WHERE BuildingType='BUILDING_FOOD_MARKET' AND YieldType='YIELD_FOOD';
UPDATE Buildings_XP2 SET RequiredPower=2 WHERE BuildingType='BUILDING_SHOPPING_MALL';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=6 WHERE BuildingType='BUILDING_SHOPPING_MALL' AND YieldType='YIELD_GOLD';
UPDATE Building_GreatWorks SET NumSlots=1 WHERE BuildingType='BUILDING_AMPHITHEATER' AND GreatWorkSlotType='GREATWORKSLOT_WRITING';
INSERT INTO Building_GreatWorks(BuildingType, GreatWorkSlotType, NumSlots) VALUES			
		('BUILDING_LIBRARY', 							'GREATWORKSLOT_WRITING',			1),
		('BUILDING_STADIUM', 							'GREATWORKSLOT_MUSIC',				1),
		('BUILDING_AQUATICS_CENTER', 					'GREATWORKSLOT_MUSIC',				1);

UPDATE Buildings SET Cost=300 WHERE BuildingType='BUILDING_FLOOD_BARRIER';
UPDATE Buildings_XP2 SET CostMultiplierPerTile=0, CostMultiplierPerSeaLevel=0 WHERE BuildingType='BUILDING_FLOOD_BARRIER';
UPDATE Buildings SET OuterDefenseHitPoints=50 WHERE BuildingType='BUILDING_WALLS';
UPDATE Buildings SET OuterDefenseHitPoints=70, Cost=200 WHERE BuildingType='BUILDING_CASTLE';
UPDATE Buildings SET OuterDefenseHitPoints=80 WHERE BuildingType='BUILDING_STAR_FORT';
UPDATE ModifierArguments SET Value=300 WHERE ModifierId='STEEL_UNLOCK_URBAN_DEFENSES' AND Name='DefenseValue';

DELETE FROM Adjacent_AppealYieldChanges WHERE DistrictType='DISTRICT_PRESERVE';
INSERT INTO Adjacent_AppealYieldChanges(DistrictType, BuildingType, MinimumValue, MaximumValue, YieldType, YieldChange, Unimproved, Description) VALUES			
		('DISTRICT_PRESERVE', 'BUILDING_GROVE',		2, 100, 'YIELD_FAITH', 		1, 0, 'LOC_TOOLTIP_APPEAL_CHARMING'),
		('DISTRICT_PRESERVE', 'BUILDING_GROVE', 	2, 100, 'YIELD_FOOD', 		1, 0, 'LOC_TOOLTIP_APPEAL_CHARMING'),
		('DISTRICT_PRESERVE', 'BUILDING_SANCTUARY', 2, 100, 'YIELD_GOLD',		1, 0, 'LOC_TOOLTIP_APPEAL_CHARMING'),
		('DISTRICT_PRESERVE', 'BUILDING_SANCTUARY', 2, 100, 'YIELD_SCIENCE',	1, 0, 'LOC_TOOLTIP_APPEAL_CHARMING'),
		('DISTRICT_PRESERVE', 'BUILDING_GROVE',		4, 100, 'YIELD_FAITH', 		1, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING'),
		('DISTRICT_PRESERVE', 'BUILDING_GROVE', 	4, 100, 'YIELD_FOOD', 		1, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING'),
		('DISTRICT_PRESERVE', 'BUILDING_GROVE', 	4, 100, 'YIELD_CULTURE', 	2, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING'),
		('DISTRICT_PRESERVE', 'BUILDING_SANCTUARY', 4, 100, 'YIELD_GOLD',		2, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING'),
		('DISTRICT_PRESERVE', 'BUILDING_SANCTUARY', 4, 100, 'YIELD_SCIENCE',	1, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING'),
		('DISTRICT_PRESERVE', 'BUILDING_SANCTUARY', 4, 100, 'YIELD_PRODUCTION',	2, 1, 'LOC_TOOLTIP_APPEAL_BREATHTAKING');
		
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_TALL' AND ModifierId='GOV_TALL_LOYALTY_DEBUFF';
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_FAITH' AND ModifierId='GOV_FAITH_PILLAGE_IMPROVEMENT_FAITH';
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_FAITH' AND ModifierId='GOV_FAITH_PILLAGE_DISTRICT_FAITH';
DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_GOV_FAITH';
UPDATE ModifierArguments SET Value=4 WHERE ModifierId='GOVCITYSTATES_ADJUST_FAVOR' AND Name='Amount';
UPDATE ModifierArguments SET Value=100 WHERE ModifierId='CHANCERY_COUNTERYSPY_SCIENCE' AND Name='Amount';

INSERT INTO BuildingModifiers(BuildingType, ModifierId) VALUES			
		('BUILDING_GRANARY', 							'GRANARY_RESOURCE_HOUSING_BK'),
		('BUILDING_GRANARY', 							'GRANARY_RESOURCE_FOOD_BK'),
		('BUILDING_WATER_MILL', 						'WATERMILL_ADDCATTLEFOOD_BK'),
		('BUILDING_WATER_MILL', 						'WATERMILL_ADDSHEEPFOOD_BK'),
		('BUILDING_WATER_MILL', 						'WATERMILL_ADDBANANASFOOD_BK'),
		('BUILDING_SEWER', 								'SEWER_WATERWORKS_HOUSING_BK'),
		('BUILDING_SEWER', 								'SEWER_WATERWORKS_AMENITY_BK'),
		('BUILDING_LIGHTHOUSE', 						'LIGHTHOUSE_ADJUST_RESOURCE_STOCKPILE_CAP_BK'),
		('BUILDING_SHIPYARD', 							'SHIPYARD_ADJUST_RESOURCE_STOCKPILE_CAP_BK'),
		('BUILDING_SEAPORT', 							'SEAPORT_ADJUST_RESOURCE_STOCKPILE_CAP_BK'),
		('BUILDING_UNIVERSITY', 						'UNIVERSITY_GREAT_WRITING_SCIENCE_BK'),
		('BUILDING_STADIUM', 							'STADIUM_GREAT_MUSIC_GOLD_BK'),
		('BUILDING_AQUATICS_CENTER', 					'AQUATICS_GREAT_MUSIC_GOLD_BK'),
		
		('BUILDING_GOV_TALL', 							'GOV_TALL_EXTRA_DISTRICT_BK'),
		('BUILDING_GOV_WIDE', 							'GOV_WIDE_EXTRA_TILES_BK'),
		('BUILDING_GOV_CONQUEST', 						'GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK'),
		('BUILDING_GOV_CULTURE', 						'GOV_CULTURE_ENEMY_WAR_WEARINESS_BK');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES			
		('GRANARY_RESOURCE_HOUSING_BK', 				'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_HOUSING',			'PLAYER_OWNS_RESOURCE_BK'),
		('GRANARY_RESOURCE_FOOD_BK', 					'MODIFIER_BUILDING_YIELD_CHANGE',						'PLAYER_OWNS_RESOURCE_BK'),
		('WATERMILL_ADDCATTLEFOOD_BK', 					'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',			'RESOURCE_IS_CATTLE_BK'),
		('WATERMILL_ADDSHEEPFOOD_BK', 					'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',			'RESOURCE_IS_SHEEP_BK'),
		('WATERMILL_ADDBANANASFOOD_BK', 				'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',			'RESOURCE_IS_BANANAS_BK'),
		('SEWER_WATERWORKS_HOUSING_BK', 				'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_HOUSING',			'CITY_HAS_WATERWORKS_BK'),
		('SEWER_WATERWORKS_AMENITY_BK', 				'MODIFIER_SINGLE_CITY_ADJUST_ENTERTAINMENT',			'CITY_HAS_WATERWORKS_BK'),
		('LIGHTHOUSE_ADJUST_RESOURCE_STOCKPILE_CAP_BK',	'MODIFIER_PLAYER_ADJUST_RESOURCE_STOCKPILE_CAP',		'LIGHTHOUSE_STOCKPILE_CAP_REQUIREMENTS_BK'),
		('SHIPYARD_ADJUST_RESOURCE_STOCKPILE_CAP_BK',	'MODIFIER_PLAYER_ADJUST_RESOURCE_STOCKPILE_CAP',		'SHIPYARD_STOCKPILE_CAP_REQUIREMENTS_BK'),
		('SEAPORT_ADJUST_RESOURCE_STOCKPILE_CAP_BK',	'MODIFIER_PLAYER_ADJUST_RESOURCE_STOCKPILE_CAP',		'SEAPORT_STOCKPILE_CAP_REQUIREMENTS_BK'),
		('UNIVERSITY_GREAT_WRITING_SCIENCE_BK',			'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',			'HAS_AMPHITHEATER_BK'),
		('STADIUM_GREAT_MUSIC_GOLD_BK',					'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',			'HAS_BROADCAST_CENTER_BK'),
		('AQUATICS_GREAT_MUSIC_GOLD_BK',				'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD',			'HAS_BROADCAST_CENTER_BK'),
		
		('GOV_TALL_EXTRA_DISTRICT_BK',					'MODIFIER_SINGLE_CITY_EXTRA_DISTRICT',					NULL),
		('GOV_WIDE_EXTRA_TILES_BK',						'MODIFIER_PLAYER_ADJUST_CITY_TILES',					NULL),
		('GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK',		'MODIFIER_PLAYER_ADD_DIPLOMATIC_YIELD_MODIFIER',		'PLAYER_HAS_GOV_BUILDING_CONQUEST_REQUIREMENTS'),
		('GOV_CULTURE_ENEMY_WAR_WEARINESS_BK',			'MODIFIER_PLAYER_ADJUST_WAR_WEARINESS',					NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES			
		('GRANARY_RESOURCE_HOUSING_BK', 				'Amount',							1),
		('GRANARY_RESOURCE_FOOD_BK', 					'BuildingType',						'BUILDING_GRANARY'),
		('GRANARY_RESOURCE_FOOD_BK', 					'YieldType',						'YIELD_FOOD'),
		('GRANARY_RESOURCE_FOOD_BK', 					'Amount',							1),
		('WATERMILL_ADDCATTLEFOOD_BK', 					'YieldType',						'YIELD_FOOD'),
		('WATERMILL_ADDCATTLEFOOD_BK', 					'Amount',							1),
		('WATERMILL_ADDSHEEPFOOD_BK', 					'YieldType',						'YIELD_FOOD'),
		('WATERMILL_ADDSHEEPFOOD_BK', 					'Amount',							1),
		('WATERMILL_ADDBANANASFOOD_BK', 				'YieldType',						'YIELD_FOOD'),
		('WATERMILL_ADDBANANASFOOD_BK', 				'Amount',							1),
		('SEWER_WATERWORKS_HOUSING_BK', 				'Amount',							1),
		('SEWER_WATERWORKS_AMENITY_BK', 				'Amount',							1),
		('LIGHTHOUSE_ADJUST_RESOURCE_STOCKPILE_CAP_BK', 'Amount',							5),
		('SHIPYARD_ADJUST_RESOURCE_STOCKPILE_CAP_BK', 	'Amount',							5),
		('SEAPORT_ADJUST_RESOURCE_STOCKPILE_CAP_BK', 	'Amount',							5),
		('UNIVERSITY_GREAT_WRITING_SCIENCE_BK', 		'GreatWorkObjectType',				'GREATWORKOBJECT_WRITING'),
		('UNIVERSITY_GREAT_WRITING_SCIENCE_BK', 		'YieldType',						'YIELD_SCIENCE'),
		('UNIVERSITY_GREAT_WRITING_SCIENCE_BK', 		'YieldChange',						1),
		('STADIUM_GREAT_MUSIC_GOLD_BK', 				'GreatWorkObjectType',				'GREATWORKOBJECT_MUSIC'),
		('STADIUM_GREAT_MUSIC_GOLD_BK', 				'YieldType',						'YIELD_GOLD'),
		('STADIUM_GREAT_MUSIC_GOLD_BK', 				'YieldChange',						2),
		('AQUATICS_GREAT_MUSIC_GOLD_BK', 				'GreatWorkObjectType',				'GREATWORKOBJECT_MUSIC'),
		('AQUATICS_GREAT_MUSIC_GOLD_BK', 				'YieldType',						'YIELD_GOLD'),
		('AQUATICS_GREAT_MUSIC_GOLD_BK', 				'YieldChange',						2),
		
		('GOV_TALL_EXTRA_DISTRICT_BK',					'Amount',							1),
		('GOV_WIDE_EXTRA_TILES_BK',						'Amount',							3),
		('GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK',		'DiplomaticYieldSource',			'CITY_CAPTURED'),
		('GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK',		'TurnsActive',						5),
		('GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK',		'YieldType',						'YIELD_PRODUCTION'),
		('GOV_CONQUEST_PRODUCTION_BOOST_LOCAL_BK',		'Amount',							30),
		('GOV_CULTURE_ENEMY_WAR_WEARINESS_BK',			'Amount',							50),
		('GOV_CULTURE_ENEMY_WAR_WEARINESS_BK',			'Enemy',							1);
		
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('PLAYER_OWNS_RESOURCE_BK', 					'REQUIREMENTSET_TEST_ANY'),
		('RESOURCE_IS_CATTLE_BK', 						'REQUIREMENTSET_TEST_ALL'),
		('RESOURCE_IS_SHEEP_BK', 						'REQUIREMENTSET_TEST_ALL'),
		('RESOURCE_IS_BANANAS_BK', 						'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_WATERWORKS_BK', 						'REQUIREMENTSET_TEST_ANY'),
		('LIGHTHOUSE_STOCKPILE_CAP_REQUIREMENTS_BK', 	'REQUIREMENTSET_TEST_ALL'),
		('SHIPYARD_STOCKPILE_CAP_REQUIREMENTS_BK', 		'REQUIREMENTSET_TEST_ALL'),
		('SEAPORT_STOCKPILE_CAP_REQUIREMENTS_BK', 		'REQUIREMENTSET_TEST_ALL'),
		('HAS_AMPHITHEATER_BK', 						'REQUIREMENTSET_TEST_ALL'),
		('HAS_BROADCAST_CENTER_BK', 					'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_RICE_BK'),
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_WHEAT_BK'),
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_MAIZE_BK'),
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_CATTLE_BK'),
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_SHEEP_BK'),
		('PLAYER_OWNS_RESOURCE_BK',						'REQUIRES_PLAYER_OWNS_BANANAS_BK'),
		('RESOURCE_IS_CATTLE_BK',						'REQUIRES_CATTLE_IN_PLOT_BK'),
		('RESOURCE_IS_SHEEP_BK',						'REQUIRES_SHEEP_IN_PLOT_BK'),
		('RESOURCE_IS_BANANAS_BK',						'REQUIRES_BANANAS_IN_PLOT_BK'),
		('CITY_HAS_WATERWORKS_BK', 						'JNR_REQUIRES_CITY_HAS_AQUEDUCT'),
		('CITY_HAS_WATERWORKS_BK', 						'JNR_REQUIRES_DAM_ADJACENT'),
		('CITY_HAS_WATERWORKS_BK', 						'JNR_REQUIRES_CANAL_ADJACENT'),
		('CITY_HAS_WATERWORKS_BK', 						'REQUIRES_PANAMA_ADJACENT_BK'),
		('LIGHTHOUSE_STOCKPILE_CAP_REQUIREMENTS_BK',	'REQUIRES_NO_BARRACKS_BK'),
		('LIGHTHOUSE_STOCKPILE_CAP_REQUIREMENTS_BK',	'REQUIRES_NO_STABLE_BK'),
		('SHIPYARD_STOCKPILE_CAP_REQUIREMENTS_BK',		'REQUIRES_NO_ARMORY_BK'),
		('SEAPORT_STOCKPILE_CAP_REQUIREMENTS_BK',		'REQUIRES_NO_MILITARY_ACADEMY_BK'),
		('HAS_AMPHITHEATER_BK',							'REQUIRES_AMPHITHEATER_BK'),
		('HAS_BROADCAST_CENTER_BK', 					'REQUIRES_BROADCAST_CENTER_BK');
INSERT INTO Requirements(RequirementId, RequirementType, Inverse) VALUES
		('REQUIRES_PLAYER_OWNS_RICE_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_PLAYER_OWNS_WHEAT_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_PLAYER_OWNS_MAIZE_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_PLAYER_OWNS_CATTLE_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_PLAYER_OWNS_SHEEP_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_PLAYER_OWNS_BANANAS_BK',				'REQUIREMENT_PLAYER_HAS_RESOURCE_OWNED',				0),
		('REQUIRES_CATTLE_IN_PLOT_BK',					'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',				0),
		('REQUIRES_SHEEP_IN_PLOT_BK',					'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',				0),
		('REQUIRES_BANANAS_IN_PLOT_BK',					'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES',				0),
		('REQUIRES_NO_BARRACKS_BK',						'REQUIREMENT_CITY_HAS_BUILDING',						1),
		('REQUIRES_NO_STABLE_BK',						'REQUIREMENT_CITY_HAS_BUILDING',						1),
		('REQUIRES_NO_ARMORY_BK',						'REQUIREMENT_CITY_HAS_BUILDING',						1),
		('REQUIRES_NO_MILITARY_ACADEMY_BK',				'REQUIREMENT_CITY_HAS_BUILDING',						1),
		('REQUIRES_AMPHITHEATER_BK',					'REQUIREMENT_CITY_HAS_BUILDING',						0),
		('REQUIRES_BROADCAST_CENTER_BK',				'REQUIREMENT_CITY_HAS_BUILDING',						0);
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('REQUIRES_PLAYER_OWNS_RICE_BK',				'ResourceType',						'RESOURCE_RICE'),
		('REQUIRES_PLAYER_OWNS_WHEAT_BK',				'ResourceType',						'RESOURCE_WHEAT'),
		('REQUIRES_PLAYER_OWNS_MAIZE_BK',				'ResourceType',						'RESOURCE_MAIZE'),
		('REQUIRES_PLAYER_OWNS_CATTLE_BK',				'ResourceType',						'RESOURCE_CATTLE'),
		('REQUIRES_PLAYER_OWNS_SHEEP_BK',				'ResourceType',						'RESOURCE_SHEEP'),
		('REQUIRES_PLAYER_OWNS_BANANAS_BK',				'ResourceType',						'RESOURCE_BANANAS'),
		('REQUIRES_CATTLE_IN_PLOT_BK',					'ResourceType',						'RESOURCE_CATTLE'),
		('REQUIRES_SHEEP_IN_PLOT_BK',					'ResourceType',						'RESOURCE_SHEEP'),
		('REQUIRES_BANANAS_IN_PLOT_BK',					'ResourceType',						'RESOURCE_BANANAS'),
		('REQUIRES_NO_BARRACKS_BK',						'BuildingType',						'BUILDING_BARRACKS'),
		('REQUIRES_NO_BARRACKS_BK',						'MustBeFunctioning',				0),
		('REQUIRES_NO_STABLE_BK',						'BuildingType',						'BUILDING_STABLE'),
		('REQUIRES_NO_STABLE_BK',						'MustBeFunctioning',				0),
		('REQUIRES_NO_ARMORY_BK',						'BuildingType',						'BUILDING_ARMORY'),
		('REQUIRES_NO_ARMORY_BK',						'MustBeFunctioning',				0),
		('REQUIRES_NO_MILITARY_ACADEMY_BK',				'BuildingType',						'BUILDING_MILITARY_ACADEMY'),
		('REQUIRES_NO_MILITARY_ACADEMY_BK',				'MustBeFunctioning',				0),
		('REQUIRES_AMPHITHEATER_BK',					'BuildingType',						'BUILDING_AMPHITHEATER'),
		('REQUIRES_AMPHITHEATER_BK',					'MustBeFunctioning',				1),
		('REQUIRES_BROADCAST_CENTER_BK',				'BuildingType',						'BUILDING_BROADCAST_CENTER'),
		('REQUIRES_BROADCAST_CENTER_BK',				'MustBeFunctioning',				1);