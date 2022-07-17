UPDATE CivilizationLevels SET CanAnnexTilesWithReceivedInfluence=0, StartingTilesForCity=18 WHERE CivilizationLevelType='CIVILIZATION_LEVEL_CITY_STATE';

INSERT INTO RequirementSets ( RequirementSetId, RequirementSetType ) VALUES
		( 'SPECIAL_DISTRICT_ON_COAST_BK', 'REQUIREMENTSET_TEST_ALL' );
INSERT INTO RequirementSetRequirements ( RequirementSetId, RequirementId ) VALUES
		( 'SPECIAL_DISTRICT_ON_COAST_BK', 'REQUIRES_PLOT_IS_ADJACENT_TO_COAST' ),
		( 'SPECIAL_DISTRICT_ON_COAST_BK', 'REQUIRES_DISTRICT_IS_SPECIALTY_DISTRICT_BK' );
UPDATE Modifiers SET SubjectRequirementSetId='SPECIAL_DISTRICT_ON_COAST_BK' WHERE ModifierId='MINOR_CIV_NAN_MADOL_DISTRICTS_CULTURE_BONUS';

-- Nan madol nerf
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='MINOR_CIV_NAN_MADOL_DISTRICTS_CULTURE_BONUS' AND Name='Amount';

-- Kumasi nerf
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='MINOR_CIV_KUMASI_CULTURE_TRADE_ROUTE_YIELD_BONUS' AND Name='Amount';

-- Kandy buff
UPDATE ModifierArguments SET Value='200' WHERE ModifierId='MINOR_CIV_KANDY_BETTER_RELIC_BONUS' AND Name='ScalingFactor';

-- Hong Kong buff
UPDATE ModifierArguments SET Value='30' WHERE ModifierId='MINOR_CIV_HONG_KONG_PROJECT_PRODUCTION_BONUS' AND Name='Amount';

-- Lisbon pillage apply on land too
UPDATE ModifierArguments SET Value='ABILITY_ECONOMIC_GOLDEN_AGE_PLUNDER_IMMUNITY' WHERE ModifierId='MINOR_CIV_LISBON_SEA_TRADE_ROUTE_PLUNDER_IMMUNITY_BONUS' AND Name='AbilityType';
	
-- Ngazargamu give 10% reduction insead on 20% reduction
UPDATE ModifierArguments SET Value='10' WHERE 
	ModifierId='MINOR_CIV_NGAZARGAMU_BARRACKS_STABLE_PURCHASE_BONUS' AND
	Name='Amount';
UPDATE ModifierArguments SET Value='10' WHERE 
	ModifierId='MINOR_CIV_NGAZARGAMU_ARMORY_PURCHASE_BONUS' AND
	Name='Amount';
UPDATE ModifierArguments SET Value='10' WHERE 
	ModifierId='MINOR_CIV_NGAZARGAMU_MILITARY_ACADEMY_PURCHASE_BONUS' AND
	Name='Amount';
	
-- Mohenjo Daro Border Growth
INSERT INTO Types(Type, Kind) VALUES
	('MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_BK', 'KIND_MODIFIER');
INSERT INTO DynamicModifiers(ModifierType, CollectionType, EffectType) VALUES
	('MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_BK', 'COLLECTION_PLAYER_CITIES', 'EFFECT_ADJUST_CITY_CULTURE_BORDER_EXPANSION');
		
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('MINOR_CIV_MOHENJO_DARO_UNIQUE_INFLUENCE_BONUS_BORDER_BK', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 'PLAYER_IS_SUZERAIN'),
	('MINOR_CIV_MOHENJO_DARO_BORDER_GROWTH_BK', 'MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_BK', NULL);
INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES
	('MINOR_CIV_MOHENJO_DARO_BORDER_GROWTH_BK', 'Amount', 'ARGTYPE_IDENTITY', 25),
	('MINOR_CIV_MOHENJO_DARO_UNIQUE_INFLUENCE_BONUS_BORDER_BK', 'ModifierId', 'ARGTYPE_IDENTITY','MINOR_CIV_MOHENJO_DARO_BORDER_GROWTH_BK');

INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES
    ('MINOR_CIV_MOHENJO_DARO_TRAIT','MINOR_CIV_MOHENJO_DARO_UNIQUE_INFLUENCE_BONUS_BORDER_BK');
	
-- Preslav Culture Bomb
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
	('MINOR_CIV_PRESLAV_UNIQUE_INFLUENCE_BONUS_CULTURE_BOMB_BK', 'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER', 'PLAYER_IS_SUZERAIN'),
	('MINOR_CIV_PRESLAV_ENCAMPMENT_CULTURE_BOMB_BK', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER', NULL);

INSERT INTO ModifierArguments(ModifierId, Name, Type, Value) VALUES
	('MINOR_CIV_PRESLAV_ENCAMPMENT_CULTURE_BOMB_BK', 'DistrictType', 'ARGTYPE_IDENTITY', 'DISTRICT_ENCAMPMENT'),
	('MINOR_CIV_PRESLAV_UNIQUE_INFLUENCE_BONUS_CULTURE_BOMB_BK', 'ModifierId', 'ARGTYPE_IDENTITY','MINOR_CIV_PRESLAV_ENCAMPMENT_CULTURE_BOMB_BK');

INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES
    ('MINOR_CIV_PRESLAV_TRAIT','MINOR_CIV_PRESLAV_UNIQUE_INFLUENCE_BONUS_CULTURE_BOMB_BK');
	
-- Hattusa buff
INSERT INTO RequirementSets ( RequirementSetId, RequirementSetType ) VALUES
		( 'PLAYER_CAN_SEE_ALUMINUM_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_COAL_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_HORSES_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_IRON_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_NITER_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_OIL_BK', 'REQUIREMENTSET_TEST_ALL' ),
		( 'PLAYER_CAN_SEE_URANIUM_BK', 'REQUIREMENTSET_TEST_ALL' );
INSERT INTO RequirementSetRequirements ( RequirementSetId, RequirementId ) VALUES
		( 'PLAYER_CAN_SEE_ALUMINUM_BK', 'REQUIRES_PLAYER_CAN_SEE_ALUMINUM' ),
		( 'PLAYER_CAN_SEE_COAL_BK', 'REQUIRES_PLAYER_CAN_SEE_COAL' ),
		( 'PLAYER_CAN_SEE_HORSES_BK', 'REQUIRES_PLAYER_CAN_SEE_HORSES' ),
		( 'PLAYER_CAN_SEE_IRON_BK', 'REQUIRES_PLAYER_CAN_SEE_IRON' ),
		( 'PLAYER_CAN_SEE_NITER_BK', 'REQUIRES_PLAYER_CAN_SEE_NITER' ),
		( 'PLAYER_CAN_SEE_OIL_BK', 'REQUIRES_PLAYER_CAN_SEE_OIL' ),
		( 'PLAYER_CAN_SEE_URANIUM_BK', 'REQUIRES_PLAYER_CAN_SEE_URANIUM' );
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_ALUMINUM_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_ALUMINUM_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_COAL_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_COAL_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_HORSES_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_HORSES_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_IRON_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_IRON_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_NITER_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_NITER_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_OIL_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_OIL_RESOURCE_XP2';
UPDATE Modifiers SET SubjectRequirementSetId='PLAYER_CAN_SEE_URANIUM_BK' WHERE ModifierId='MINOR_CIV_HATTUSA_URANIUM_RESOURCE_XP2';