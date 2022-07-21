-- UC_DHA_Amenities
-- Author: JNR
--------------------------------------------------------------

UPDATE Features	SET Appeal=0 WHERE FeatureType='FEATURE_FLOODPLAINS';
UPDATE Features	SET Appeal=0 WHERE FeatureType='FEATURE_FLOODPLAINS_GRASSLAND';
UPDATE Features	SET Appeal=0 WHERE FeatureType='FEATURE_FLOODPLAINS_PLAINS';
UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_REEF';
UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_GEOTHERMAL_FISSURE';
UPDATE Features	SET Appeal=-1 WHERE FeatureType='FEATURE_VOLCANO';

INSERT INTO TraitModifiers(TraitType, ModifierId) VALUES
		('TRAIT_LEADER_MAJOR_CIV',							'JNR_DISTRICT_BREATHTAKING_APPEAL_TO_AMENITIES'),
		('TRAIT_LEADER_MAJOR_CIV',							'JNR_DISTRICT_DISGUSTING_APPEAL_TO_AMENITIES'),
		('TRAIT_LEADER_MAJOR_CIV',							'JNR_MARSH_EXTRA_APPEAL_CONSERVATION'),
		('TRAIT_LEADER_MAJOR_CIV',							'JNR_JUNGLE_EXTRA_APPEAL_CONSERVATION'),
		('MINOR_CIV_DEFAULT_TRAIT',							'JNR_MARSH_EXTRA_APPEAL_CONSERVATION'),
		('MINOR_CIV_DEFAULT_TRAIT',							'JNR_JUNGLE_EXTRA_APPEAL_CONSERVATION');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('JNR_DISTRICT_BREATHTAKING_APPEAL_TO_AMENITIES',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',		'JNR_DISTRICT_BREATHTAKING_APPEAL'),
		('JNR_DISTRICT_DISGUSTING_APPEAL_TO_AMENITIES',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',		'JNR_DISTRICT_DISGUSTING_APPEAL'),
		('JNR_MARSH_EXTRA_APPEAL_CONSERVATION',				'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	'JNR_CIVIC_UNLOCKED_CONSERVATION'),
		('JNR_JUNGLE_EXTRA_APPEAL_CONSERVATION',			'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	'JNR_CIVIC_UNLOCKED_CONSERVATION');

INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('JNR_DISTRICT_BREATHTAKING_APPEAL_TO_AMENITIES',	'Amount',			1),
		('JNR_DISTRICT_DISGUSTING_APPEAL_TO_AMENITIES',		'Amount',			-1),
		('JNR_MARSH_EXTRA_APPEAL_CONSERVATION',				'FeatureType',		'FEATURE_MARSH'),
		('JNR_MARSH_EXTRA_APPEAL_CONSERVATION',				'Amount',			1),
		('JNR_JUNGLE_EXTRA_APPEAL_CONSERVATION',			'FeatureType',		'FEATURE_JUNGLE'),
		('JNR_JUNGLE_EXTRA_APPEAL_CONSERVATION',			'Amount',			1);

INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('JNR_DISTRICT_BREATHTAKING_APPEAL',				'REQUIREMENTSET_TEST_ALL'),
		('JNR_DISTRICT_DISGUSTING_APPEAL',					'REQUIREMENTSET_TEST_ALL'),
		('JNR_CIVIC_UNLOCKED_CONSERVATION',					'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('JNR_DISTRICT_BREATHTAKING_APPEAL',				'REQUIRES_DISTRICT_IS_SPECIALTY_DISTRICT_BK'),
		('JNR_DISTRICT_BREATHTAKING_APPEAL',				'JNR_REQUIRES_BREATHTAKING_APPEAL'),
		('JNR_DISTRICT_DISGUSTING_APPEAL',					'REQUIRES_DISTRICT_IS_SPECIALTY_DISTRICT_BK'),
		('JNR_DISTRICT_DISGUSTING_APPEAL',					'JNR_REQUIRES_DISGUSTING_APPEAL'),
		('JNR_CIVIC_UNLOCKED_CONSERVATION',					'JNR_CIVIC_CONSERVATION_REQUIREMENT');

INSERT INTO Requirements(RequirementId, RequirementType, Inverse) VALUES
		('JNR_REQUIRES_PLOT_HAS_ANY_DISTRICT',				'REQUIREMENT_PLOT_HAS_ANY_DISTRICT',			0),
		('JNR_REQUIRES_BREATHTAKING_APPEAL',				'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN',			0),
		('JNR_REQUIRES_DISGUSTING_APPEAL',					'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN',			0),
		('JNR_CIVIC_CONSERVATION_REQUIREMENT',				'REQUIREMENT_PLAYER_HAS_CIVIC',					0);

INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('JNR_REQUIRES_BREATHTAKING_APPEAL',				'MinimumAppeal',	4),
		('JNR_REQUIRES_DISGUSTING_APPEAL',					'MaximumAppeal',	-4),
		('JNR_CIVIC_CONSERVATION_REQUIREMENT',				'CivicType',		'CIVIC_CONSERVATION');