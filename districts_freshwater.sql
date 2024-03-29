-- Credit: JNR

INSERT INTO Types(Type, Kind) VALUES
		('MODIFIER_CITY_ADJUST_WATER_HOUSING_JNR_UC',		'KIND_MODIFIER');
INSERT INTO DynamicModifiers(ModifierType, CollectionType, EffectType) VALUES
		('MODIFIER_CITY_ADJUST_WATER_HOUSING_JNR_UC',		'COLLECTION_OWNER',				'EFFECT_ADJUST_WATER_HOUSING');
		
INSERT INTO DistrictModifiers(DistrictType, ModifierId) VALUES
		('DISTRICT_CITY_CENTER',							'JNR_FWW_HOUSING_AQUEDUCT'),
		('DISTRICT_CITY_CENTER',							'JNR_FWW_HOUSING_COASTAL'),
		('DISTRICT_CITY_CENTER',							'JNR_FWW_HOUSING_DRY');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
		('JNR_FWW_HOUSING_AQUEDUCT',						'MODIFIER_CITY_ADJUST_WATER_HOUSING_JNR_UC',			'JNR_HOUSING_1_REQUIREMENTS'),
		('JNR_FWW_HOUSING_COASTAL',							'MODIFIER_CITY_ADJUST_WATER_HOUSING_JNR_UC',			'JNR_HOUSING_2_REQUIREMENTS'),
		('JNR_FWW_HOUSING_DRY',								'MODIFIER_CITY_ADJUST_WATER_HOUSING_JNR_UC',			'JNR_HOUSING_3_REQUIREMENTS');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
		('JNR_FWW_HOUSING_AQUEDUCT',						'Amount',						1),
		('JNR_FWW_HOUSING_COASTAL',							'Amount',						2),
		('JNR_FWW_HOUSING_DRY',								'Amount',						3);

INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
		('DAM_OR_CANAL_ADJACENT_BK',						'REQUIREMENTSET_TEST_ANY'),
		('JNR_HOUSING_1_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('JNR_HOUSING_2_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('JNR_HOUSING_3_REQUIREMENTS',						'REQUIREMENTSET_TEST_ALL'),
		('JNR_WATER_HOUSING_AQUEDUCT_1_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'),
		('JNR_WATER_HOUSING_COASTAL_2_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'),
		('JNR_WATER_HOUSING_DRY_3_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
		('DAM_OR_CANAL_ADJACENT_BK',						'JNR_REQUIRES_DAM_ADJACENT'),
		('DAM_OR_CANAL_ADJACENT_BK',						'JNR_REQUIRES_CANAL_ADJACENT'),
		('DAM_OR_CANAL_ADJACENT_BK',						'REQUIRES_PANAMA_ADJACENT_BK'),
		('JNR_HOUSING_1_REQUIREMENTS',						'JNR_REQUIRES_WATER_HOUSING_AQUEDUCT_1'),
		('JNR_HOUSING_1_REQUIREMENTS',						'REQUIRES_DAM_OR_CANAL_BK'),
		('JNR_HOUSING_2_REQUIREMENTS',						'JNR_REQUIRES_WATER_HOUSING_COASTAL_2'),
		('JNR_HOUSING_2_REQUIREMENTS',						'REQUIRES_DAM_OR_CANAL_BK'),
		('JNR_HOUSING_3_REQUIREMENTS',						'JNR_REQUIRES_WATER_HOUSING_DRY_3'),
		('JNR_HOUSING_3_REQUIREMENTS',						'REQUIRES_DAM_OR_CANAL_BK'),
		('JNR_WATER_HOUSING_AQUEDUCT_1_REQUIREMENTS',		'JNR_REQUIRES_PLOT_IS_NOT_FRESH_WATER'),
		('JNR_WATER_HOUSING_AQUEDUCT_1_REQUIREMENTS',		'JNR_REQUIRES_CITY_HAS_AQUEDUCT'),
		('JNR_WATER_HOUSING_COASTAL_2_REQUIREMENTS',		'JNR_REQUIRES_PLOT_IS_NOT_FRESH_WATER'),
		('JNR_WATER_HOUSING_COASTAL_2_REQUIREMENTS',		'JNR_REQUIRES_CITY_DOES_NOT_HAVE_AQUEDUCT'),
		('JNR_WATER_HOUSING_COASTAL_2_REQUIREMENTS',		'REQUIRES_PLOT_IS_ADJACENT_TO_COAST'),
		('JNR_WATER_HOUSING_DRY_3_REQUIREMENTS',			'JNR_REQUIRES_PLOT_IS_NOT_FRESH_WATER'),
		('JNR_WATER_HOUSING_DRY_3_REQUIREMENTS',			'JNR_REQUIRES_CITY_DOES_NOT_HAVE_AQUEDUCT'),
		('JNR_WATER_HOUSING_DRY_3_REQUIREMENTS',			'JNR_REQUIRES_PLOT_NOT_ADJACENT_TO_COAST');
INSERT INTO Requirements(RequirementId, RequirementType, Inverse) VALUES
		('REQUIRES_DAM_OR_CANAL_BK',						'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('JNR_REQUIRES_DAM_ADJACENT',						'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',		0),
		('JNR_REQUIRES_CANAL_ADJACENT',						'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES',		0),
		('REQUIRES_PANAMA_ADJACENT_BK',						'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES',		0),
		('JNR_REQUIRES_WATER_HOUSING_AQUEDUCT_1',			'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('JNR_REQUIRES_WATER_HOUSING_COASTAL_2',			'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('JNR_REQUIRES_WATER_HOUSING_DRY_3',				'REQUIREMENT_REQUIREMENTSET_IS_MET',					0),
		('JNR_REQUIRES_CITY_HAS_AQUEDUCT',					'REQUIREMENT_CITY_HAS_DISTRICT',						0),
		('JNR_REQUIRES_CITY_DOES_NOT_HAVE_AQUEDUCT',		'REQUIREMENT_CITY_HAS_DISTRICT',						1),
		('JNR_REQUIRES_PLOT_NOT_ADJACENT_TO_COAST',			'REQUIREMENT_PLOT_ADJACENT_TO_COAST',					1),
		('JNR_REQUIRES_PLOT_IS_NOT_FRESH_WATER',			'REQUIREMENT_PLOT_IS_FRESH_WATER',						1);
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
		('REQUIRES_DAM_OR_CANAL_BK',						'RequirementSetId',				'DAM_OR_CANAL_ADJACENT_BK'),
		('JNR_REQUIRES_DAM_ADJACENT',						'DistrictType',					'DISTRICT_DAM'),
		('JNR_REQUIRES_CANAL_ADJACENT',						'DistrictType',					'DISTRICT_CANAL'),
		('REQUIRES_PANAMA_ADJACENT_BK',						'BuildingType',					'BUILDING_PANAMA_CANAL'),
		('REQUIRES_PANAMA_ADJACENT_BK',						'MinRange',						1),
		('REQUIRES_PANAMA_ADJACENT_BK',						'MaxRange',						1),
		('JNR_REQUIRES_CITY_HAS_AQUEDUCT',					'DistrictType',					'DISTRICT_AQUEDUCT'),
		('JNR_REQUIRES_CITY_DOES_NOT_HAVE_AQUEDUCT',		'DistrictType',					'DISTRICT_AQUEDUCT'),
		('JNR_REQUIRES_WATER_HOUSING_AQUEDUCT_1',			'RequirementSetId',				'JNR_WATER_HOUSING_AQUEDUCT_1_REQUIREMENTS'),
		('JNR_REQUIRES_WATER_HOUSING_COASTAL_2',			'RequirementSetId',				'JNR_WATER_HOUSING_COASTAL_2_REQUIREMENTS'),
		('JNR_REQUIRES_WATER_HOUSING_DRY_3',				'RequirementSetId',				'JNR_WATER_HOUSING_DRY_3_REQUIREMENTS');