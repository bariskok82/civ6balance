UPDATE ModifierArguments SET Value=2 WHERE ModifierId='MONUMENT_LOYALTY' AND Name='Amount';

UPDATE Buildings SET Entertainment=1 WHERE BuildingType='BUILDING_SEWER';

UPDATE ModifierArguments SET Value=1 WHERE ModifierId='LIGHTHOUSE_COASTAL_CITY_HOUSING' AND Name='Amount';

INSERT INTO Building_YieldChanges(BuildingType, YieldType, YieldChange) VALUES			
	('BUILDING_SHIPYARD', 'YIELD_PRODUCTION', 1);
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_SHIPYARD' AND ModifierId='SHIPYARD_UNIMPROVED_COAST_PRODUCTION';

UPDATE Buildings SET Housing=1 WHERE BuildingType='BUILDING_HANGAR';

UPDATE Buildings SET Housing=1 WHERE BuildingType='BUILDING_AIRPORT';
DELETE FROM Buildings_XP2 WHERE BuildingType='BUILDING_AIRPORT';
DELETE FROM Building_YieldChangesBonusWithPower WHERE BuildingType='BUILDING_AIRPORT';

UPDATE Building_YieldChanges SET YieldChange=2 WHERE BuildingType='BUILDING_FERRIS_WHEEL' AND YieldType='YIELD_CULTURE';

UPDATE ModifierArguments SET Value=4 WHERE ModifierId='STADIUM_20_POPULATION_TOURISM' AND Name='Amount';

UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_MUSEUM_ART' AND YieldType='YIELD_CULTURE';

UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_MUSEUM_ARTIFACT' AND YieldType='YIELD_CULTURE';

UPDATE Building_YieldChanges SET YieldChange=7 WHERE BuildingType='BUILDING_BANK' AND YieldType='YIELD_GOLD';

UPDATE Building_YieldChanges SET YieldChange=5 WHERE BuildingType='BUILDING_STOCK_EXCHANGE' AND YieldType='YIELD_GOLD';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=9 WHERE BuildingType='BUILDING_STOCK_EXCHANGE' AND YieldType='YIELD_GOLD';

UPDATE Building_GreatWorks SET NumSlots=1 WHERE BuildingType='BUILDING_AMPHITHEATER' AND GreatWorkSlotType='GREATWORKSLOT_WRITING';
INSERT INTO Building_GreatWorks(BuildingType, GreatWorkSlotType, NumSlots) VALUES			
	('BUILDING_LIBRARY', 'GREATWORKSLOT_WRITING', 1),
	('BUILDING_STADIUM', 'GREATWORKSLOT_MUSIC', 1),
	('BUILDING_AQUATICS_CENTER', 'GREATWORKSLOT_MUSIC', 1);
		
UPDATE Buildings_XP2 SET RequiredPower=2 WHERE BuildingType='BUILDING_FOOD_MARKET';
UPDATE Building_YieldChanges SET YieldChange=3 WHERE BuildingType='BUILDING_FOOD_MARKET' AND YieldType='YIELD_FOOD';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=5 WHERE BuildingType='BUILDING_FOOD_MARKET' AND YieldType='YIELD_FOOD';

UPDATE Buildings_XP2 SET RequiredPower=2 WHERE BuildingType='BUILDING_SHOPPING_MALL';
UPDATE Building_YieldChangesBonusWithPower SET YieldChange=6 WHERE BuildingType='BUILDING_SHOPPING_MALL' AND YieldType='YIELD_GOLD';
