UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_REEF';
UPDATE Features	SET Appeal=1 WHERE FeatureType='FEATURE_GEOTHERMAL_FISSURE';
UPDATE Features	SET Appeal=-1 WHERE FeatureType='FEATURE_VOLCANO';

UPDATE Improvement_YieldChanges SET YieldChange=3 WHERE ImprovementType='IMPROVEMENT_OIL_WELL' AND YieldType='YIELD_PRODUCTION';
UPDATE Improvement_YieldChanges SET YieldChange=3 WHERE ImprovementType='IMPROVEMENT_OFFSHORE_OIL_RIG' AND YieldType='YIELD_PRODUCTION';

INSERT INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange) VALUES
		('IMPROVEMENT_FORT', 'YIELD_PRODUCTION', 1),
		('IMPROVEMENT_AIRSTRIP', 'YIELD_PRODUCTION', 1),
		('IMPROVEMENT_MISSILE_SILO', 'YIELD_PRODUCTION', 1);
UPDATE Improvements SET AirSlots = 2 WHERE ImprovementType = 'IMPROVEMENT_AIRSTRIP';
UPDATE Improvements SET Appeal = -1 WHERE ImprovementType = 'IMPROVEMENT_MISSILE_SILO';

UPDATE Modifiers SET SubjectRequirementSetId = null WHERE ModifierId='DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN';
UPDATE Districts SET RequiresPopulation = 1 WHERE DistrictType='DISTRICT_SPACEPORT';
