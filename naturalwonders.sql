UPDATE Feature_AdjacentYields SET YieldChange = 3 WHERE FeatureType = 'FEATURE_BERMUDA_TRIANGLE' AND YieldType = 'YIELD_SCIENCE';

UPDATE Feature_YieldChanges SET YieldChange = 2 WHERE FeatureType = 'FEATURE_CHOCOLATEHILLS' AND YieldType = 'YIELD_FOOD';
UPDATE Feature_YieldChanges SET YieldChange = 2 WHERE FeatureType = 'FEATURE_CHOCOLATEHILLS' AND YieldType = 'YIELD_SCIENCE';

INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_CLIFFS_DOVER', 'YIELD_CULTURE', 1),
		('FEATURE_CLIFFS_DOVER', 'YIELD_GOLD', 1);
DELETE FROM Feature_YieldChanges WHERE FeatureType = 'FEATURE_CLIFFS_DOVER';
INSERT INTO Feature_YieldChanges(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_CLIFFS_DOVER', 'YIELD_FOOD', 2),
		('FEATURE_CLIFFS_DOVER', 'YIELD_CULTURE', 2),
		('FEATURE_CLIFFS_DOVER', 'YIELD_GOLD', 2);
UPDATE Features SET Appeal = 2 WHERE FeatureType = 'FEATURE_CLIFFS_DOVER';

UPDATE Features SET Appeal = 4 WHERE FeatureType = 'FEATURE_CRATER_LAKE';
UPDATE Feature_YieldChanges SET YieldChange = 3 WHERE FeatureType = 'FEATURE_CRATER_LAKE' AND YieldType = 'YIELD_SCIENCE';

INSERT INTO Feature_YieldChanges(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_DEAD_SEA', 'YIELD_FOOD', 1);
		
UPDATE Feature_AdjacentYields SET YieldChange = 3 WHERE FeatureType = 'FEATURE_DELICATE_ARCH' AND YieldType = 'YIELD_GOLD';
INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_DELICATE_ARCH', 'YIELD_SCIENCE', 1);

INSERT INTO Feature_YieldChanges(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_EYE_OF_THE_SAHARA', 'YIELD_FAITH', 1);
UPDATE ModifierArguments SET Value = 4 WHERE ModifierId='EYESAHARA_SCIENCE_ATOMIC' AND Name='Amount';

DELETE FROM Feature_YieldChanges WHERE FeatureType = 'FEATURE_FOUNTAIN_OF_YOUTH';
INSERT INTO Feature_YieldChanges(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_FOUNTAIN_OF_YOUTH', 'YIELD_FAITH', 3),
		('FEATURE_FOUNTAIN_OF_YOUTH', 'YIELD_FOOD', 2);
		
INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_GALAPAGOS', 'YIELD_FOOD', 1);
		
UPDATE Feature_YieldChanges SET YieldChange = 3 WHERE FeatureType = 'FEATURE_GOBUSTAN' AND YieldType = 'YIELD_PRODUCTION';
UPDATE Feature_YieldChanges SET YieldChange = 4 WHERE FeatureType = 'FEATURE_GOBUSTAN' AND YieldType = 'YIELD_CULTURE';

UPDATE Feature_YieldChanges SET YieldChange = 3 WHERE FeatureType = 'FEATURE_BARRIER_REEF' AND YieldType = 'YIELD_SCIENCE';
INSERT INTO Feature_YieldChanges(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_BARRIER_REEF', 'YIELD_GOLD', 3);

INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_IKKIL', 'YIELD_GOLD', 1);

UPDATE Features SET Appeal = 4 WHERE FeatureType = 'FEATURE_LAKE_RETBA';
UPDATE Feature_YieldChanges SET YieldChange = 4 WHERE FeatureType = 'FEATURE_LAKE_RETBA' AND YieldType = 'YIELD_GOLD';

UPDATE Feature_AdjacentYields SET YieldChange = 2 WHERE FeatureType = 'FEATURE_DEVILSTOWER' AND YieldType = 'YIELD_PRODUCTION';

UPDATE ModifierArguments SET Value = 4 WHERE ModifierId='ALPINE_TRAINING_COMBAT_HILLS' AND Name='Amount';
UPDATE Features SET Appeal = 4 WHERE FeatureType = 'FEATURE_MATTERHORN';

INSERT INTO UnitAbilityModifiers(UnitAbilityType, ModifierId) VALUES
		('ABILITY_ALTITUDE_TRAINING', 'ALTITUDE_TRAINING_COMBAT_HILLS');
INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('ALTITUDE_TRAINING_COMBAT_HILLS', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'BALKAN_CAVALRY_PLOT_IS_HILS_REQUIREMENTS');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('ALTITUDE_TRAINING_COMBAT_HILLS', 'Amount', 4);
INSERT INTO ModifierStrings(ModifierId, Context, Text) VALUES
		('ALTITUDE_TRAINING_COMBAT_HILLS', 'Preview', '{LOC_ABILITY_ALTITUDE_TRAINING_COMBAT_HILLS_MODIFIER_DESCRIPTION} {LOC_WONDER_DESCRIPTOR_PREVIEW_TEXT}');

UPDATE Feature_AdjacentYields SET YieldChange = 1 WHERE FeatureType = 'FEATURE_PAITITI' AND YieldType = 'YIELD_CULTURE';
UPDATE Feature_AdjacentYields SET YieldChange = 1 WHERE FeatureType = 'FEATURE_PAITITI' AND YieldType = 'YIELD_GOLD';

INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_PAMUKKALE', 'YIELD_GOLD', 1);
		
UPDATE Feature_YieldChanges SET YieldChange = 4 WHERE FeatureType = 'FEATURE_PANTANAL' AND YieldType = 'YIELD_FOOD';

DELETE FROM Feature_AdjacentYields WHERE FeatureType = 'FEATURE_PIOPIOTAHI';
INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_PIOPIOTAHI', 'YIELD_SCIENCE', 1),
		('FEATURE_PIOPIOTAHI', 'YIELD_CULTURE', 1);

UPDATE Feature_YieldChanges SET YieldChange = 2 WHERE FeatureType = 'FEATURE_WHITEDESERT' AND YieldType = 'YIELD_SCIENCE';
UPDATE Feature_YieldChanges SET YieldChange = 2 WHERE FeatureType = 'FEATURE_WHITEDESERT' AND YieldType = 'YIELD_CULTURE';
UPDATE Feature_YieldChanges SET YieldChange = 5 WHERE FeatureType = 'FEATURE_WHITEDESERT' AND YieldType = 'YIELD_GOLD';

INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_TSINGY', 'YIELD_FAITH', 1);

UPDATE Feature_YieldChanges SET YieldChange = 2 WHERE FeatureType = 'FEATURE_UBSUNUR_HOLLOW' AND YieldType = 'YIELD_PRODUCTION';
UPDATE Feature_YieldChanges SET YieldChange = 3 WHERE FeatureType = 'FEATURE_UBSUNUR_HOLLOW' AND YieldType = 'YIELD_FAITH';
			
UPDATE Feature_AdjacentYields SET YieldChange = 1 WHERE FeatureType = 'FEATURE_ULURU' AND YieldType = 'YIELD_FAITH';

INSERT INTO Feature_AdjacentYields(FeatureType, YieldType, YieldChange) VALUES
		('FEATURE_ZHANGYE_DANXIA', 'YIELD_GOLD', 1);
