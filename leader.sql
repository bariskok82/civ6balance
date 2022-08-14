UPDATE Buildings SET Cost=60 WHERE BuildingType='BUILDING_BASILIKOI_PAIDES';

DELETE FROM Improvement_Adjacencies WHERE ImprovementType='IMPROVEMENT_PYRAMID' AND YieldChangeId='Pyramid_HarborAdjacency';
UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_PYRAMID' AND YieldType='YIELD_FAITH';
INSERT INTO Improvement_Adjacencies(ImprovementType, YieldChangeId) VALUES
	('IMPROVEMENT_PYRAMID', 'Pyramid_CityCenterAdjacency2_BK');
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='Pyramid_CommercialHubAdjacency';
INSERT INTO Adjacency_YieldChanges(ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict) VALUES
	('Pyramid_CityCenterAdjacency2_BK', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_CITY_CENTER');

DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_GAUL' AND ModifierId='GAUL_MINE_CULTURE_BOMB';

UPDATE Improvements SET Appeal=1 WHERE ImprovementType='IMPROVEMENT_SPHINX';
INSERT INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange) VALUES
	('IMPROVEMENT_SPHINX', 'YIELD_GOLD', 0);
INSERT INTO Improvement_BonusYieldChanges(Id, ImprovementType, YieldType, BonusYieldChange, PrereqCivic) VALUES
	(150, 'IMPROVEMENT_SPHINX', 'YIELD_GOLD', 2, 'CIVIC_NATURAL_HISTORY');

UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_PAIRIDAEZA' AND YieldType='YIELD_GOLD';
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='Pairidaeza_CommercialHubAdjacency';
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='Pairidaeza_CityCenterAdjacency';

UPDATE Buildings SET Cost=80 WHERE BuildingType='BUILDING_ORDU';

INSERT INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange) VALUES
	('IMPROVEMENT_ZIGGURAT', 'YIELD_GOLD', 0);
INSERT INTO Improvement_BonusYieldChanges(Id, ImprovementType, YieldType, BonusYieldChange, PrereqCivic) VALUES
	(151, 'IMPROVEMENT_ZIGGURAT', 'YIELD_GOLD', 2, 'CIVIC_NATURAL_HISTORY');

UPDATE Buildings SET Cost=55 WHERE BuildingType='BUILDING_PALGUM';
UPDATE ModifierArguments SET Value=-60 WHERE ModifierId='TRAIT_SCIENCE_DECREASE' AND Name='Amount';

UPDATE Buildings SET Cost=80 WHERE BuildingType='BUILDING_STAVE_CHURCH';
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES
	('TRAIT_LEADER_PILLAGE_SCIENCE_QUARRIES_BK', 'MODIFIER_PLAYER_ADJUST_ADDITIONAL_PILLAGING');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('TRAIT_LEADER_PILLAGE_SCIENCE_QUARRIES_BK', 'PlunderType', 'PLUNDER_SCIENCE'),
	('TRAIT_LEADER_PILLAGE_SCIENCE_QUARRIES_BK', 'ImprovementType', 'IMPROVEMENT_QUARRY'),
	('TRAIT_LEADER_PILLAGE_SCIENCE_QUARRIES_BK', 'Amount', 15);
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_MELEE_COASTAL_RAIDS' AND ModifierId IN ('TRAIT_LEADER_PILLAGE_CULTURE_QUARRIES', 'TRAIT_LEADER_PILLAGE_CULTURE_PASTURES');
INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES
	('TRAIT_LEADER_MELEE_COASTAL_RAIDS', 'TRAIT_LEADER_PILLAGE_SCIENCE_QUARRIES_BK');

UPDATE Buildings SET Cost=220 WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY';

UPDATE Buildings SET Cost=80 WHERE BuildingType='BUILDING_SUKIENNICE';

UPDATE Buildings SET Cost=80 WHERE BuildingType='BUILDING_PRASAT';
UPDATE ModifierArguments SET Value=5 WHERE ModifierId='PRASAT_TOURISM_10_POPULATION' AND Name='Amount';
UPDATE ModifierArguments SET Value=5 WHERE ModifierId='PRASAT_TOURISM_20_POPULATION' AND Name='Amount';

UPDATE Units SET Combat=82, BaseMoves=3 WHERE UnitType='UNIT_DIGGER';
UPDATE ModifierArguments SET Value=5 WHERE ModifierId='TRAIT_CITADELCIVILIZATION_LIBERATION_PRODUCTION' AND Name='TurnsActive';
UPDATE ModifierArguments SET Value=5 WHERE ModifierId='TRAIT_CITADELCIVILIZATION_DEFENSIVE_PRODUCTION' AND Name='TurnsActive';

UPDATE Buildings SET Cost=200 WHERE BuildingType='BUILDING_QUEENS_BIBLIOTHEQUE';

UPDATE Buildings SET Cost=100 WHERE BuildingType='BUILDING_MARAE';

UPDATE ModifierArguments SET Value='-10, -10, -10, -10, -10, -10' WHERE ModifierId='TRAIT_LEADER_NEARBY_CITIES_LOSE_YIELDS' AND Name='Amount';
	
UPDATE Buildings SET Cost=240 WHERE BuildingType='BUILDING_THERMAL_BATH';

UPDATE Buildings SET Cost=90 WHERE BuildingType='BUILDING_TLACHTLI';

UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_FAITH_SCULPTURE' AND Name='YieldChange';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_GOLD_SCULPTURE' AND Name='YieldChange';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_FAITH_ARTIFACT' AND Name='YieldChange';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_GOLD_ARTIFACT' AND Name='YieldChange';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_FAITH_RELIC' AND Name='YieldChange';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_GREAT_WORK_GOLD_RELIC' AND Name='YieldChange';

UPDATE Units SET Combat=75, RangedCombat=85, AntiAirCombat=90 WHERE UnitType='UNIT_BRAZILIAN_MINAS_GERAES';
UPDATE ModifierArguments SET Value=1 WHERE ModifierId='TRAIT_AMAZON_RAINFOREST_EXTRA_APPEAL' AND Name='Amount';

UPDATE ModifierArguments SET Value=1 WHERE ModifierId='MISSION_NEWCONTINENT_FAITH' AND Name='Amount';

UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_GREAT_WALL' AND YieldType='YIELD_GOLD';

UPDATE ModifierArguments SET Value=50 WHERE ModifierId='TRAIT_LIBERATION_WAR_PRODUCTION' AND Name='Amount';
UPDATE Improvement_YieldChanges SET YieldChange=3 WHERE ImprovementType='IMPROVEMENT_GOLF_COURSE' AND YieldType='YIELD_GOLD';

UPDATE ModifierArguments SET Value=2 WHERE ModifierId='TRAIT_SCIENCE_PER_FOREIGN_CITY_FOLLOWING_RELIGION' AND Name='Amount';
UPDATE Buildings SET Cost=170 WHERE BuildingType='BUILDING_MADRASA';

UPDATE Buildings SET Cost=200 WHERE BuildingType='BUILDING_GRAND_BAZAAR';
UPDATE Building_YieldChanges SET YieldChange=7 WHERE BuildingType='BUILDING_GRAND_BAZAAR' AND YieldType='YIELD_GOLD';

UPDATE Buildings SET Cost=200 WHERE BuildingType='BUILDING_TSIKHE';
UPDATE Buildings SET OuterDefenseHitPoints=120 WHERE BuildingType='BUILDING_TSIKHE';

UPDATE Buildings SET Cost=300 WHERE BuildingType='BUILDING_FILM_STUDIO';
UPDATE Units SET Combat=100, RangedCombat=100 WHERE UnitType='UNIT_AMERICAN_P51';

UPDATE Improvements SET Appeal=1 WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK';
UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK' AND YieldType='YIELD_FOOD';
UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK' AND YieldType='YIELD_PRODUCTION';