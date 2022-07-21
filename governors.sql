UPDATE Governors SET TransitionStrength = 100 WHERE GovernorType != 'GOVERNOR_THE_DEFENDER';
UPDATE Governors SET TransitionStrength = 150 WHERE GovernorType = 'GOVERNOR_THE_DEFENDER';

DELETE FROM GovernorPromotionModifiers WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_GARRISON_COMMANDER' AND ModifierId = 'GARRISON_COMMANDER_ADJUST_CITY_COMBAT_BONUS';
DELETE FROM GovernorPromotionModifiers WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_DEFENSE_LOGISTICS' AND ModifierId = 'DEFENSE_LOGISTICS_BONUS_STRATEGICS';
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('GARRISON_COMMANDER_WALLS_PRODUCTION_BK', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION', NULL),
	('GARRISON_COMMANDER_CASTLE_PRODUCTION_BK', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION', NULL),
	('GARRISON_COMMANDER_STARFORT_PRODUCTION_BK', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_ANCIENT_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_CLASSICAL_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_MEDIEVAL_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_RENAISSANCE_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_INDUSTRIAL_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_MODERN_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_ATOMIC_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_INFORMATION_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL),
	('DEFENSE_LOGISTICS_FUTURE_SUPPORT_PRODUCTION_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_TAG_ERA_PRODUCTION', NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('GARRISON_COMMANDER_WALLS_PRODUCTION_BK', 'BuildingType', 'BUILDING_WALLS'),
	('GARRISON_COMMANDER_WALLS_PRODUCTION_BK', 'Amount', 50),
	('GARRISON_COMMANDER_CASTLE_PRODUCTION_BK', 'BuildingType', 'BUILDING_CASTLE'),
	('GARRISON_COMMANDER_CASTLE_PRODUCTION_BK', 'Amount', 50),
	('GARRISON_COMMANDER_STARFORT_PRODUCTION_BK', 'BuildingType', 'BUILDING_STAR_FORT'),
	('GARRISON_COMMANDER_STARFORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_ANCIENT_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_ANCIENT_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_ANCIENT'),
	('DEFENSE_LOGISTICS_ANCIENT_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_CLASSICAL_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_CLASSICAL_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_CLASSICAL'),
	('DEFENSE_LOGISTICS_CLASSICAL_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_MEDIEVAL_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_MEDIEVAL_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_MEDIEVAL'),
	('DEFENSE_LOGISTICS_MEDIEVAL_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_RENAISSANCE_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_RENAISSANCE_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_RENAISSANCE'),
	('DEFENSE_LOGISTICS_RENAISSANCE_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_INDUSTRIAL_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_INDUSTRIAL_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_INDUSTRIAL'),
	('DEFENSE_LOGISTICS_INDUSTRIAL_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_MODERN_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_MODERN_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_MODERN'),
	('DEFENSE_LOGISTICS_MODERN_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_ATOMIC_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_ATOMIC_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_ATOMIC'),
	('DEFENSE_LOGISTICS_ATOMIC_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_INFORMATION_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_INFORMATION_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_INFORMATION'),
	('DEFENSE_LOGISTICS_INFORMATION_SUPPORT_PRODUCTION_BK', 'Amount', 50),
	('DEFENSE_LOGISTICS_FUTURE_SUPPORT_PRODUCTION_BK', 'UnitPromotionClass', 'PROMOTION_CLASS_SUPPORT'),
	('DEFENSE_LOGISTICS_FUTURE_SUPPORT_PRODUCTION_BK', 'EraType', 'ERA_FUTURE'),
	('DEFENSE_LOGISTICS_FUTURE_SUPPORT_PRODUCTION_BK', 'Amount', 50);
INSERT INTO GovernorPromotionModifiers(GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_REDOUBT', 'GARRISON_COMMANDER_ADJUST_CITY_COMBAT_BONUS'),
	('GOVERNOR_PROMOTION_GARRISON_COMMANDER', 'GARRISON_COMMANDER_WALLS_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_GARRISON_COMMANDER', 'GARRISON_COMMANDER_CASTLE_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_GARRISON_COMMANDER', 'GARRISON_COMMANDER_STARFORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_ANCIENT_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_CLASSICAL_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_MEDIEVAL_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_RENAISSANCE_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_INDUSTRIAL_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_MODERN_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_ATOMIC_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_INFORMATION_SUPPORT_PRODUCTION_BK'),
	('GOVERNOR_PROMOTION_DEFENSE_LOGISTICS', 'DEFENSE_LOGISTICS_FUTURE_SUPPORT_PRODUCTION_BK');

UPDATE ModifierArguments SET Value = 4 WHERE ModifierId = 'EMISSARY_IDENTITY_PRESSURE_TO_FOREIGN_CITIES' AND Name = 'Amount';
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('AFFLUENCE_ADJUST_FAVOR_BK', 'MODIFIER_PLAYER_ADJUST_EXTRA_FAVOR_PER_TURN', NULL),
	('FOREIGN_INVESTOR_ALLIANCE_POINTS_BK', 'MODIFIER_PLAYER_ADJUST_ALLIANCE_POINTS', NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('AFFLUENCE_ADJUST_FAVOR_BK', 'Amount', 2),
	('FOREIGN_INVESTOR_ALLIANCE_POINTS_BK', 'Amount', 1);
INSERT INTO GovernorPromotionModifiers(GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_AMBASSADOR_AFFLUENCE', 'AFFLUENCE_ADJUST_FAVOR_BK'),
	('GOVERNOR_PROMOTION_AMBASSADOR_FOREIGN_INVESTOR', 'FOREIGN_INVESTOR_ALLIANCE_POINTS_BK');

DELETE FROM GovernorPromotionModifiers WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_CARDINAL_CITADEL_OF_GOD' AND ModifierId = 'CARDINAL_CITADEL_OF_GOD_PRESSURE';
DELETE FROM GovernorPromotionModifiers WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_CARDINAL_CITADEL_OF_GOD' AND ModifierId = 'CARDINAL_CITADEL_OF_GOD_COMBAT';
UPDATE ModifierArguments SET Value = 1 WHERE ModifierId = 'CARDINAL_BISHOP_FAITH_DISTRICT' AND Name = 'Amount';
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('CARDINAL_RELIC_PRODUCTION_BK', 'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD', NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('CARDINAL_RELIC_PRODUCTION_BK', 'GreatWorkObjectType', 'GREATWORKOBJECT_RELIC'),
	('CARDINAL_RELIC_PRODUCTION_BK', 'YieldType', 'YIELD_PRODUCTION'),
	('CARDINAL_RELIC_PRODUCTION_BK', 'YieldChange', 3);
INSERT INTO GovernorPromotionModifiers(GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_CARDINAL_GRAND_INQUISITOR', 'CARDINAL_CITADEL_OF_GOD_PRESSURE'),
	('GOVERNOR_PROMOTION_CARDINAL_GRAND_INQUISITOR', 'CARDINAL_CITADEL_OF_GOD_COMBAT'),
	('GOVERNOR_PROMOTION_CARDINAL_CITADEL_OF_GOD', 'CARDINAL_RELIC_PRODUCTION_BK');
	
INSERT INTO GovernorPromotionModifiers(GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_RESOURCE_MANAGER_BLACK_MARKETEER', 'DEFENSE_LOGISTICS_BONUS_STRATEGICS');

INSERT INTO Types(Type, Kind) VALUES
	('ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'KIND_ABILITY'),
	('ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'KIND_ABILITY');
INSERT INTO TypeTags(Type, Tag) VALUES
	('ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'CLASS_BUILDER'),
	('ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'CLASS_SUPPORT');
INSERT INTO UnitAbilities(UnitAbilityType, Inactive) VALUES
	('ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 1),
	('ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 1);
INSERT INTO UnitAbilityModifiers(UnitAbilityType, ModifierId) VALUES
	('ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'MOD_IGNORE_TERRAIN_COST'),
	('ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'MOD_IGNORE_CROSSING_RIVERS_COST'),
	('ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'MOD_IGNORE_TERRAIN_COST'),
	('ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'MOD_IGNORE_CROSSING_RIVERS_COST');
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'MODIFIER_SINGLE_CITY_GRANT_ABILITY_FOR_TRAINED_UNITS', NULL),
	('REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'MODIFIER_SINGLE_CITY_GRANT_ABILITY_FOR_TRAINED_UNITS', 'UNIT_IS_MILITARY_ENGINEER');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
	('REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK', 'AbilityType', 'ABILITY_REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK'),
	('REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK', 'AbilityType', 'ABILITY_REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK');
INSERT INTO GovernorPromotionModifiers(GovernorPromotionType, ModifierId) VALUES
	('GOVERNOR_PROMOTION_REINFORCED_INFRASTRUCTURE', 'REINFORCED_INFRASTRUCTURE_BUILDER_IGNORE_TERRAIN_BK'),
	('GOVERNOR_PROMOTION_REINFORCED_INFRASTRUCTURE', 'REINFORCED_INFRASTRUCTURE_ENGINEER_IGNORE_TERRAIN_BK');
	
UPDATE ModifierArguments SET Value = 50 WHERE ModifierId = 'EDUCATOR_INCREASE_CITY_GREAT_PERSON_POINT_BONUS' AND Name = 'Amount';