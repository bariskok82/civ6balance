
--==============================================================
--******				    O T H E R					  ******
--==============================================================

UPDATE GlobalParameters SET Value='2' WHERE Name='EXPERIENCE_BARB_SOFT_CAP';
UPDATE GlobalParameters SET Value='4' WHERE Name='EXPERIENCE_MAX_BARB_LEVEL';
UPDATE GlobalParameters SET Value='8' WHERE Name='EXPERIENCE_MAX_LEVEL';
UPDATE GlobalParameters SET Value='10' WHERE Name='EXPERIENCE_MAXIMUM_ONE_COMBAT';
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_MAJOR_CIV' AND ModifierId='BARBARIAN_CAMP_GOLD_SCALING';

UPDATE GlobalParameters SET Value='-4'WHERE Name='THRESHOLD_SHIFT_PER_PAST_DARK_AGE';
UPDATE GlobalParameters SET Value='8' WHERE Name='THRESHOLD_SHIFT_PER_PAST_GOLDEN_AGE';
UPDATE GlobalParameters SET Value='0' WHERE Name='GREATWORK_ART_LOCK_TIME';
UPDATE ModifierArguments SET Value='20' WHERE ModifierId='COMPUTERS_BOOST_ALL_TOURISM' AND Name='Amount';
UPDATE ModifierArguments SET Value='30' WHERE ModifierId='ENVIRONMENTALISM_BOOST_ALL_TOURISM' AND Name='Amount';
UPDATE Technologies SET Description=null WHERE TechnologyType='TECH_CASTLES';
UPDATE Technologies SET Description=null WHERE TechnologyType='TECH_SANITATION';
UPDATE Technologies SET Description=null WHERE TechnologyType='TECH_SQUARE_RIGGING';
UPDATE Technologies SET Description='LOC_TECH_SQUARE_RIGGING_DESCRIPTION' WHERE TechnologyType='TECH_ASTRONOMY';
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_SQUARE_RIGGING' AND ModifierId='SQUARE_RIGGING_ADJUST_EMBARKED_MOVEMENT';
INSERT INTO TechnologyModifiers(TechnologyType, ModifierId) VALUES
	('TECH_ASTRONOMY', 'SQUARE_RIGGING_ADJUST_EMBARKED_MOVEMENT');

UPDATE GlobalParameters SET Value='2' WHERE Name='RELIGION_SPREAD_TRADE_ROUTE_PRESSURE_FOR_DESTINATION';
UPDATE GlobalParameters SET Value='1' WHERE Name='RELIGION_SPREAD_TRADE_ROUTE_PRESSURE_FOR_ORIGIN';
UPDATE GlobalParameters SET Value='3' WHERE Name='YIELD_FOOD_CITY_TERRAIN_REPLACE';
UPDATE GlobalParameters SET Value='2' WHERE Name='YIELD_PRODUCTION_CITY_TERRAIN_REPLACE';
UPDATE GlobalParameters SET Value='3' WHERE Name='GOVERNOR_BASE_TURNS_TO_ESTABLISH';

UPDATE GlobalParameters SET Value='-20' WHERE Name='FAVOR_CO2_MINIMUM';
UPDATE GlobalParameters SET Value='-20' WHERE Name='FAVOR_GRIEVANCES_MINIMUM';
UPDATE GlobalParameters SET Value='-2' WHERE Name='FAVOR_PER_OWNED_ORIGINAL_CAPITAL';
UPDATE GlobalParameters SET Value='3' WHERE Name='WORLD_CONGRESS_INITIAL_ERA';
UPDATE GlobalParameters SET Value='6' WHERE Name='WORLD_CONGRESS_REQUEST_FOR_AID_DAMAGE_MIN';
UPDATE GlobalParameters SET Value='30' WHERE Name='DIPLOMATIC_VICTORY_POINTS_REQUIRED';

DELETE FROM RandomEvent_Damages WHERE DamageType='UNIT_KILLED_CIVILIAN';
UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_REEF';
UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_GEOTHERMAL_FISSURE';
UPDATE Features	SET Appeal=-1 WHERE FeatureType='FEATURE_VOLCANO';
