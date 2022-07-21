UPDATE Units SET MandatoryObsoleteTech = 'TECH_STEEL', ObsoleteCivic = NULL WHERE UnitType='UNIT_BATTERING_RAM';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_STEEL', ObsoleteCivic = NULL WHERE UnitType='UNIT_SIEGE_TOWER';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_SUPPLY_CONVOY' WHERE Unit='UNIT_BATTERING_RAM';
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_SUPPLY_CONVOY' WHERE Unit='UNIT_SIEGE_TOWER';

UPDATE Units SET StrategicResource = NULL WHERE UnitType='UNIT_BIPLANE';
UPDATE Units SET StrategicResource = NULL WHERE UnitType='UNIT_SUBMARINE';
UPDATE Units SET StrategicResource = 'RESOURCE_OIL' WHERE UnitType='UNIT_AIRCRAFT_CARRIER';
DELETE FROM Units_XP2 WHERE UnitType='UNIT_CATAPULT';
DELETE FROM Units_XP2 WHERE UnitType='UNIT_BIPLANE';
DELETE FROM Units_XP2 WHERE UnitType='UNIT_SUBMARINE';
INSERT INTO Units_XP2(UnitType, ResourceCost, ResourceMaintenanceType, ResourceMaintenanceAmount, CanEarnExperience, CanFormMilitaryFormation) VALUES
		('UNIT_AIRCRAFT_CARRIER', 1, 'RESOURCE_OIL', 1, 0, 0);

UPDATE Units SET RangedCombat=75 WHERE UnitType='UNIT_SPEC_OPS';
UPDATE Units SET AntiAirCombat=110 WHERE UnitType='UNIT_MOBILE_SAM';
UPDATE Units SET AntiAirCombat=100 WHERE UnitType='UNIT_GIANT_DEATH_ROBOT';
UPDATE Units SET Combat=80 WHERE UnitType='UNIT_AT_CREW';
UPDATE Units SET Combat=80, BaseMoves=3 WHERE UnitType='UNIT_INFANTRY';
UPDATE Units SET Combat=65, RangedCombat=75, AntiAirCombat=80 WHERE UnitType='UNIT_BATTLESHIP';
UPDATE Units SET Combat=70 WHERE UnitType='UNIT_AIRCRAFT_CARRIER';
UPDATE Units SET Combat=90 WHERE UnitType='UNIT_DESTROYER';
UPDATE Units SET Combat=90 WHERE UnitType='UNIT_MODERN_AT';
UPDATE Units SET Combat=90 WHERE UnitType='UNIT_MECHANIZED_INFANTRY';
UPDATE Units SET Combat=75, RangedCombat=70 WHERE UnitType='UNIT_BIPLANE';
UPDATE Units SET Combat=95, RangedCombat=95 WHERE UnitType='UNIT_FIGHTER';
UPDATE Units SET Combat=85, Bombard=100 WHERE UnitType='UNIT_BOMBER';

INSERT INTO TechnologyModifiers(TechnologyType, ModifierId) VALUES
		('TECH_TELECOMMUNICATIONS',		'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_11'),
		('TECH_TELECOMMUNICATIONS',		'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_12'),
		('TECH_STEALTH_TECHNOLOGY',		'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_21'),
		('TECH_STEALTH_TECHNOLOGY',		'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_22'),
		('TECH_ROBOTICS',				'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_31'),
		('TECH_ROBOTICS',				'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_32'),
		('TECH_ROBOTICS',				'ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_40');
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_11',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_12',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_21',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_22',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_31',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_32',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_40',	'MODIFIER_PLAYER_UNITS_GRANT_PROMOTION',	'ACT_UNIT_IS_CARRIER_REQUIREMENTS');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_11',	'PromotionType',	'PROMOTION_FLIGHT_DECK'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_12',	'PromotionType',	'PROMOTION_SCOUT_PLANES'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_21',	'PromotionType',	'PROMOTION_HANGAR_DECK'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_22',	'PromotionType',	'PROMOTION_ADVANCED_ENGINES'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_31',	'PromotionType',	'PROMOTION_FOLDING_WINGS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_32',	'PromotionType',	'PROMOTION_DECK_CREWS'),
		('ACT_MODIFIER_AIRCRAFT_CARRIER_UPGRADE_40',	'PromotionType',	'PROMOTION_SUPER_CARRIER');
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('ACT_UNIT_IS_CARRIER_REQUIREMENTS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('ACT_UNIT_IS_CARRIER_REQUIREMENTS', 'ACT_REQUIRES_UNIT_IS_NAVAL_CARRIER');
INSERT INTO Requirements(RequirementId, RequirementType) VALUES
		('ACT_REQUIRES_UNIT_IS_NAVAL_CARRIER', 'REQUIREMENT_UNIT_TAG_MATCHES');
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('ACT_REQUIRES_UNIT_IS_NAVAL_CARRIER', 'Tag', 'CLASS_NAVAL_CARRIER');
UPDATE Technologies SET Description='LOC_TECH_TELECOMMUNICATIONS_DESCRIPTION' WHERE TechnologyType='TECH_TELECOMMUNICATIONS';
UPDATE Technologies SET Description='LOC_TECH_STEALTH_TECHNOLOGY_DESCRIPTION' WHERE TechnologyType='TECH_STEALTH_TECHNOLOGY';

UPDATE ModifierArguments SET Value=2 WHERE ModifierId='SPYGLASS_BONUS_SIGHT' AND Name='Amount';
UPDATE ModifierArguments SET Value=7 WHERE ModifierId='ADVANCED_RANGEFINDING_BONUS_VS_NAVAL' AND Name='Amount';
UPDATE ModifierArguments SET Value=2 WHERE ModifierId='OBSERVATION_INCREASED_SIGHT_RANGE' AND Name='Amount';
DELETE FROM RequirementSetRequirements WHERE RequirementSetId='EMPLACEMENT_REQUIREMENTS' AND RequirementId='OPPONENT_PLOT_IS_CITY_CENTER_REQUIREMENT';
DELETE FROM RequirementSetRequirements WHERE RequirementSetId='ADVANCED_RANGEFINDING_REQUIREMENTS' AND RequirementId='OPPONENT_IS_SEA_UNIT';
DELETE FROM RequirementSetRequirements WHERE RequirementSetId='STRAFE_OPPONENT_REQUIREMENTS' AND RequirementId='OPPONENT_IS_NOT_AIR_UNIT_REQUIREMENTS';
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType='PROMOTION_SCHILTRON';
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType='PROMOTION_SPIKING_THE_GUNS';
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType='PROMOTION_REACTIVE_ARMOR';
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType='PROMOTION_RUTTER';
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType='PROMOTION_SUPERFORTRESS';
INSERT INTO UnitPromotionModifiers(UnitPromotionType, ModifierId) VALUES 
		('PROMOTION_SENTRY',						'SENTRY_MORE_XP_BK'),
		('PROMOTION_GUERRILLA',						'GUERRILLA_IGNORE_ZOC_BK'),
		('PROMOTION_CAMOUFLAGE',					'CAMOUFLAGE_MOVEMENT_BK'),
		('PROMOTION_SUPPRESSION',					'SUPPRESSION_NEGATIVE_COMBAT_BK'),
		('PROMOTION_SCHILTRON',						'SCHILTRON_LESS_DAMAGE_WEAKNESS_BK'),
		('PROMOTION_SPIKING_THE_GUNS',				'SPIKING_THE_GUNS_UNWOUNDED_ATTACK_BK'),
		('PROMOTION_ESCORT_MOBILITY',				'ESCORT_MOBILITY_ADJACENT_MOVEMENT_BK'),
		('PROMOTION_REACTIVE_ARMOR',				'REACTIVE_ARMOR_UNWOUNDED_DEFENSE_BK'),
		('PROMOTION_HELMSMAN',						'RUTTER_SIGHT_BONUS'),
		('PROMOTION_RUTTER',						'RUTTER_SEE_THROUGH_BK'),
		('PROMOTION_RUTTER',						'RUTTER_MORE_XP_BK'),
		('PROMOTION_SUPERFORTRESS',					'SUPERFORTRESS_BONUS_VS_DISTRICTS_BK');
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId, SubjectStackLimit) VALUES
		('SENTRY_MORE_XP_BK',						'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER', 						NULL,												NULL),
		('GUERRILLA_IGNORE_ZOC_BK',					'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_ZOC', 										NULL,												NULL),
		('CAMOUFLAGE_MOVEMENT_BK',					'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 										NULL,												NULL),
		('SUPPRESSION_NEGATIVE_COMBAT_BK',			'MODIFIER_ALL_UNITS_ATTACH_MODIFIER', 											'SUPPRESSION_ADJACENT_AT_WAR_BK',					1),
		('SUPPRESSION_COMBAT_MODIFIER_BK',			'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 										NULL,												NULL),
		('SCHILTRON_LESS_DAMAGE_WEAKNESS_BK',		'MODIFIER_PLAYER_UNITS_ADJUST_STRENGTH_REDUCTION_FOR_DAMAGE_MODIFIER', 			NULL,												NULL),
		('SPIKING_THE_GUNS_UNWOUNDED_ATTACK_BK',	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 										'SPIKING_THE_GUNS_OPPONENT_UNWOUNDED_BK',			NULL),
		('ESCORT_MOBILITY_ADJACENT_MOVEMENT_BK',	'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER', 										'ESCORT_MOBILITY_UNIT_ADJACENT_BK',					NULL),
		('ESCORT_MOBILITY_MOVEMENT_MODIFIER_BK',	'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', 										NULL,												NULL),
		('REACTIVE_ARMOR_UNWOUNDED_DEFENSE_BK',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 										'REACTIVE_ARMOR_UNIT_UNWOUNDED_BK',					NULL),
		('RUTTER_SEE_THROUGH_BK',					'MODIFIER_PLAYER_UNIT_ADJUST_SEE_THROUGH_FEATURES', 							NULL,												NULL),
		('RUTTER_MORE_XP_BK',						'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER', 						NULL,												NULL),
		('SUPERFORTRESS_BONUS_VS_DISTRICTS_BK',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 										'SHELLS_REQUIREMENTS',								NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('SENTRY_MORE_XP_BK', 						'Amount',				50),
		('GUERRILLA_IGNORE_ZOC_BK', 				'Ignore',				1),
		('CAMOUFLAGE_MOVEMENT_BK', 					'Amount',				1),
		('SUPPRESSION_NEGATIVE_COMBAT_BK', 			'ModifierId',			'SUPPRESSION_COMBAT_MODIFIER_BK'),
		('SUPPRESSION_COMBAT_MODIFIER_BK', 			'Amount',				-3),
		('SCHILTRON_LESS_DAMAGE_WEAKNESS_BK', 		'Amount',				80),
		('SPIKING_THE_GUNS_UNWOUNDED_ATTACK_BK', 	'Amount',				10),
		('ESCORT_MOBILITY_ADJACENT_MOVEMENT_BK', 	'ModifierId',			'ESCORT_MOBILITY_MOVEMENT_MODIFIER_BK'),
		('ESCORT_MOBILITY_MOVEMENT_MODIFIER_BK', 	'Amount',				1),
		('REACTIVE_ARMOR_UNWOUNDED_DEFENSE_BK', 	'Amount',				10),
		('RUTTER_SEE_THROUGH_BK', 					'CanSee',				1),
		('RUTTER_MORE_XP_BK', 						'Amount',				50),
		('SUPERFORTRESS_BONUS_VS_DISTRICTS_BK', 	'Amount',				14);
INSERT INTO ModifierStrings(ModifierId, Context, Text) VALUES
		('SUPPRESSION_COMBAT_MODIFIER_BK', 			'Preview',				'{1_Amount} {LOC_PROMOTION_SUPPRESSION_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}'),
		('SUPERFORTRESS_BONUS_VS_DISTRICTS_BK', 	'Preview',				'{1_Amount} {LOC_PROMOTION_SUPERFORTRESS_NAME} {LOC_PROMOTION_DESCRIPTOR_PREVIEW_TEXT}');
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('SUPPRESSION_ADJACENT_AT_WAR_BK', 			'REQUIREMENTSET_TEST_ALL'),
		('SPIKING_THE_GUNS_OPPONENT_UNWOUNDED_BK', 	'REQUIREMENTSET_TEST_ALL'),
		('ESCORT_MOBILITY_UNIT_ADJACENT_BK', 		'REQUIREMENTSET_TEST_ALL'),
		('REACTIVE_ARMOR_UNIT_UNWOUNDED_BK', 		'REQUIREMENTSET_TEST_ALL'),
		('ADVANCED_RANGEFINDING_PLOTS_BK', 			'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('SUPPRESSION_ADJACENT_AT_WAR_BK', 			'REQUIRES_ADJACENT_AT_WAR_BK'),
		('SPIKING_THE_GUNS_OPPONENT_UNWOUNDED_BK', 	'REQUIRES_IS_UNWOUNDED_BK'),
		('SPIKING_THE_GUNS_OPPONENT_UNWOUNDED_BK', 	'PLAYER_IS_ATTACKER_REQUIREMENTS'),
		('ESCORT_MOBILITY_UNIT_ADJACENT_BK', 		'REQUIRES_ADJACENT_UNIT_BK'),
		('ESCORT_MOBILITY_UNIT_ADJACENT_BK', 		'OPPONENT_IS_NOT_LIGHT_CAVALRY_UNIT_REQUIREMENTS'),
		('ESCORT_MOBILITY_UNIT_ADJACENT_BK', 		'OPPONENT_IS_NOT_HEAVY_CAVALRY_UNIT_REQUIREMENTS'),
		('ARMOR_PIERCING_REQUIREMENTS', 			'OPPONENT_IS_LIGHT_CAVALRY_UNIT_REQUIREMENTS'),
		('REACTIVE_ARMOR_UNIT_UNWOUNDED_BK', 		'REQUIRES_IS_UNWOUNDED_BK'),
		('REACTIVE_ARMOR_UNIT_UNWOUNDED_BK', 		'PLAYER_IS_DEFENDER_REQUIREMENTS'),
		('ADVANCED_RANGEFINDING_REQUIREMENTS', 		'ADVANCED_RANGEFINDING_PLOTS_MET_BK'),
		('ADVANCED_RANGEFINDING_REQUIREMENTS', 		'REQUIRES_NOT_DISTRICT_BK'),
		('ADVANCED_RANGEFINDING_PLOTS_BK', 			'PLOT_IS_FOREST_REQUIREMENT'),
		('ADVANCED_RANGEFINDING_PLOTS_BK', 			'PLOT_IS_JUNGLE_REQUIREMENT'),
		('ADVANCED_RANGEFINDING_PLOTS_BK', 			'PLOT_IS_HILLS_REQUIREMENT'),
		('ADVANCED_RANGEFINDING_PLOTS_BK', 			'REQUIRES_PLOT_HAS_REEF'),
		('STRAFE_OPPONENT_REQUIREMENTS', 			'OPPONENT_IS_LAND_UNIT_REQUIREMENTS');
INSERT INTO Requirements(RequirementId, RequirementType, Inverse) VALUES
		('REQUIRES_ADJACENT_AT_WAR_BK', 			'REQUIREMENT_PLOT_ADJACENT_TO_OWNER_AT_WAR',			0),
		('REQUIRES_IS_UNWOUNDED_BK', 				'REQUIREMENT_UNIT_DAMAGE_MINIMUM',						1),
		('REQUIRES_ADJACENT_UNIT_BK', 				'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',					0),
		('ADVANCED_RANGEFINDING_PLOTS_MET_BK', 		'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('REQUIRES_NOT_DISTRICT_BK', 				'REQUIREMENT_OPPONENT_IS_DISTRICT',						1);
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('REQUIRES_ADJACENT_AT_WAR_BK', 			'MinDistance',			1),
		('REQUIRES_ADJACENT_AT_WAR_BK', 			'MaxDistance',			1),
		('REQUIRES_IS_UNWOUNDED_BK', 				'MinimumAmount',		1),
		('REQUIRES_ADJACENT_UNIT_BK', 				'MinDistance',			1),
		('ADVANCED_RANGEFINDING_PLOTS_MET_BK', 		'RequirementSetId',		'ADVANCED_RANGEFINDING_PLOTS_BK');
		
INSERT INTO Types (Type, Kind) VALUES
		('FSS_MODIFIER_PLAYER_UNITS_ADJUST_IGNORE_TERRAIN_COST', 'KIND_MODIFIER');
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType) VALUES
		('FSS_MODIFIER_PLAYER_UNITS_ADJUST_IGNORE_TERRAIN_COST', 'COLLECTION_PLAYER_UNITS', 'EFFECT_ADJUST_UNIT_IGNORE_TERRAIN_COST');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'FSS_SETTLER_SPEED_BOOST'),
		('TRAIT_LEADER_MAJOR_CIV', 'FSS_SETTLER_IGNORE_TERRAIN'),
		('TRAIT_LEADER_MAJOR_CIV', 'FSS_SETTLER_IGNORE_RIVERS'),
		('TRAIT_LEADER_MAJOR_CIV', 'FSS_SETTLER_IGNORE_EMBARK');
INSERT INTO Modifiers (ModifierId, ModifierType, Permanent, SubjectRequirementSetId) VALUES
		('FSS_SETTLER_SPEED_BOOST', 'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT', 1, 'FSS_SETTLER_SPEED_REQSET'),
		('FSS_SETTLER_IGNORE_TERRAIN', 'FSS_MODIFIER_PLAYER_UNITS_ADJUST_IGNORE_TERRAIN_COST', 1, 'FSS_SETTLER_SPEED_REQSET'),
		('FSS_SETTLER_IGNORE_RIVERS', 'MODIFIER_PLAYER_UNITS_ADJUST_IGNORE_RIVERS', 1, 'FSS_SETTLER_SPEED_REQSET'),
		('FSS_SETTLER_IGNORE_EMBARK', 'MODIFIER_PLAYER_UNITS_ADJUST_IGNORE_SHORES', 1, 'FSS_SETTLER_SPEED_REQSET');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
		('FSS_SETTLER_SPEED_BOOST', 'Amount', 1),
		('FSS_SETTLER_IGNORE_TERRAIN', 'Ignore', 1),
		('FSS_SETTLER_IGNORE_TERRAIN', 'Type', 'ALL'),
		('FSS_SETTLER_IGNORE_RIVERS', 'Ignore', 1),
		('FSS_SETTLER_IGNORE_EMBARK', 'Ignore', 1);
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('FSS_SETTLER_SPEED_REQSET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('FSS_SETTLER_SPEED_REQSET', 'FSS_REQUIRES_UNIT_IS_SETTLER'),
		('FSS_SETTLER_SPEED_REQSET', 'FSS_REQUIRES_NO_PALACE');
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
		('FSS_REQUIRES_UNIT_IS_SETTLER', 'REQUIREMENT_UNIT_TYPE_MATCHES', 0),
		('FSS_REQUIRES_NO_PALACE', 'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS', 1);
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
		('FSS_REQUIRES_UNIT_IS_SETTLER', 'UnitType', 'UNIT_SETTLER'),
		('FSS_REQUIRES_NO_PALACE', 'BuildingType', 'BUILDING_PALACE'),
		('FSS_REQUIRES_NO_PALACE', 'Amount', 1);