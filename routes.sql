UPDATE Routes SET MovementCost=0.6 WHERE RouteType='ROUTE_INDUSTRIAL_ROAD';
UPDATE Routes SET MovementCost=0.3 WHERE RouteType='ROUTE_RAILROAD';

UPDATE Routes_XP2 SET BuildWithUnitChargeCost=0 WHERE RouteType='ROUTE_ANCIENT_ROAD';
UPDATE Routes_XP2 SET BuildWithUnitChargeCost=0 WHERE RouteType='ROUTE_MEDIEVAL_ROAD';
UPDATE Routes_XP2 SET BuildWithUnitChargeCost=0 WHERE RouteType='ROUTE_INDUSTRIAL_ROAD';
UPDATE Routes_XP2 SET BuildWithUnitChargeCost=0 WHERE RouteType='ROUTE_MODERN_ROAD';

INSERT INTO Requirements(RequirementId, RequirementType) VALUES
		('REQUIRES_PLAYER_IS_MEDIEVAL_ERA_BK',		'REQUIREMENT_PLAYER_ERA_AT_LEAST'),
		('REQUIRES_PLAYER_IS_INDUSTRIAL_ERA_BK',	'REQUIREMENT_PLAYER_ERA_AT_LEAST'),
		('REQUIRES_PLAYER_IS_MODERN_ERA_BK',		'REQUIREMENT_PLAYER_ERA_AT_LEAST');

INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('REQUIRES_PLAYER_IS_MEDIEVAL_ERA_BK',		'EraType',	'ERA_MEDIEVAL'),
		('REQUIRES_PLAYER_IS_INDUSTRIAL_ERA_BK',	'EraType',	'ERA_INDUSTRIAL'),
		('REQUIRES_PLAYER_IS_MODERN_ERA_BK',		'EraType',	'ERA_MODERN');

INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('PLAYER_IS_MEDIEVAL_ERA_BK',				'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_INDUSTRIAL_ERA_BK',				'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_MODERN_ERA_BK',					'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('PLAYER_IS_MEDIEVAL_ERA_BK',				'REQUIRES_PLAYER_IS_MEDIEVAL_ERA_BK'),
		('PLAYER_IS_INDUSTRIAL_ERA_BK',				'REQUIRES_PLAYER_IS_INDUSTRIAL_ERA_BK'),
		('PLAYER_IS_MODERN_ERA_BK',					'REQUIRES_PLAYER_IS_MODERN_ERA_BK');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId, RunOnce) VALUES
		('DISTRICT_ROADS_MEDIEVAL_BK',				'MODIFIER_GRANT_ROUTE_IN_RADIUS',		'PLAYER_IS_MEDIEVAL_ERA_BK',		1),
		('DISTRICT_ROADS_INDUSTRIAL_BK',			'MODIFIER_GRANT_ROUTE_IN_RADIUS',		'PLAYER_IS_INDUSTRIAL_ERA_BK',		1),
		('DISTRICT_ROADS_MODERN_BK',				'MODIFIER_GRANT_ROUTE_IN_RADIUS',		'PLAYER_IS_MODERN_ERA_BK',			1);

INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('DISTRICT_ROADS_MEDIEVAL_BK',				'RouteType',		'ROUTE_MEDIEVAL_ROAD'),
		('DISTRICT_ROADS_MEDIEVAL_BK',				'Radius',			1),
		('DISTRICT_ROADS_INDUSTRIAL_BK',			'RouteType',		'ROUTE_INDUSTRIAL_ROAD'),
		('DISTRICT_ROADS_INDUSTRIAL_BK',			'Radius',			1),
		('DISTRICT_ROADS_MODERN_BK',				'RouteType',		'ROUTE_MODERN_ROAD'),
		('DISTRICT_ROADS_MODERN_BK',				'Radius',			1);
--------------------------------------------------------------

-- DistrictModifiers
--------------------------------------------------------------
INSERT INTO DistrictModifiers(DistrictType, ModifierId) VALUES
		('DISTRICT_CITY_CENTER',					'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_INDUSTRIAL_ZONE',				'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_HANSA',						'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_OPPIDUM',					'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_COMMERCIAL_HUB',					'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_SUGUBA',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_CAMPUS',							'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_OBSERVATORY',				'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_SEOWON',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_THEATER',						'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_ACROPOLIS',					'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_HOLY_SITE',						'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_LAVRA',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_ENCAMPMENT',						'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_IKANDA',						'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_THANH',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_HARBOR',							'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_ROYAL_NAVY_DOCKYARD',		'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_COTHON',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_AERODROME',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_ENTERTAINMENT_COMPLEX',			'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_STREET_CARNIVAL',			'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_WATER_STREET_CARNIVAL',		'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_NEIGHBORHOOD',					'DISTRICT_ROADS_MEDIEVAL_BK'),
			('DISTRICT_MBANZA',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_GOVERNMENT',						'DISTRICT_ROADS_MEDIEVAL_BK'),
		('DISTRICT_DIPLOMATIC_QUARTER',				'DISTRICT_ROADS_MEDIEVAL_BK'),
		
		('DISTRICT_CITY_CENTER',					'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_INDUSTRIAL_ZONE',				'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_HANSA',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_OPPIDUM',					'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_COMMERCIAL_HUB',					'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_SUGUBA',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_CAMPUS',							'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_OBSERVATORY',				'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_SEOWON',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_THEATER',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_ACROPOLIS',					'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_HOLY_SITE',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_LAVRA',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_ENCAMPMENT',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_IKANDA',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_THANH',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_HARBOR',							'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_ROYAL_NAVY_DOCKYARD',		'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_COTHON',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_AERODROME',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_ENTERTAINMENT_COMPLEX',			'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_STREET_CARNIVAL',			'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_WATER_STREET_CARNIVAL',		'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_NEIGHBORHOOD',					'DISTRICT_ROADS_INDUSTRIAL_BK'),
			('DISTRICT_MBANZA',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_GOVERNMENT',						'DISTRICT_ROADS_INDUSTRIAL_BK'),
		('DISTRICT_DIPLOMATIC_QUARTER',				'DISTRICT_ROADS_INDUSTRIAL_BK'),
		
		('DISTRICT_CITY_CENTER',					'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_INDUSTRIAL_ZONE',				'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_HANSA',						'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_OPPIDUM',					'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_COMMERCIAL_HUB',					'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_SUGUBA',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_CAMPUS',							'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_OBSERVATORY',				'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_SEOWON',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_THEATER',						'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_ACROPOLIS',					'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_HOLY_SITE',						'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_LAVRA',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_ENCAMPMENT',						'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_IKANDA',						'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_THANH',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_HARBOR',							'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_ROYAL_NAVY_DOCKYARD',		'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_COTHON',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_AERODROME',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_ENTERTAINMENT_COMPLEX',			'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_STREET_CARNIVAL',			'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_WATER_STREET_CARNIVAL',		'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_NEIGHBORHOOD',					'DISTRICT_ROADS_MODERN_BK'),
			('DISTRICT_MBANZA',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_GOVERNMENT',						'DISTRICT_ROADS_MODERN_BK'),
		('DISTRICT_DIPLOMATIC_QUARTER',				'DISTRICT_ROADS_MODERN_BK');