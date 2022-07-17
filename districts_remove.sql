INSERT INTO Types(Type, Kind) SELECT 'PROJECT_REMOVE_'||DistrictType, 'KIND_PROJECT' FROM Districts WHERE RequiresPlacement = 1 AND MaxPerPlayer = -1;

INSERT INTO Projects(ProjectType, Name, ShortName, Description, Cost, CostProgressionModel, CostProgressionParam1, PrereqDistrict)
SELECT 'PROJECT_REMOVE_'||DistrictType, 'LOC_PROJECT_REMOVE'||substr(Name, 4), 'LOC_PROJECT_REMOVE'||substr(Name, 4), 'Removes the district with all its buildings.', 240, 'NO_PROGRESSION_MODEL', 0, DistrictType
FROM Districts WHERE RequiresPlacement = 1 AND MaxPerPlayer = -1;

CREATE TABLE "RD_civType_uniqueDistrictType" ("CivType" TEXT NOT NULL, "ReplacedDistrictType" TEXT NOT NULL, "UniqueDistrictType" TEXT NOT NULL);
INSERT INTO RD_civType_uniqueDistrictType(CivType, ReplacedDistrictType, UniqueDistrictType)
SELECT a.CivilizationType, c.ReplacesDistrictType, b.DistrictType FROM CivilizationTraits AS a, Districts AS b, DistrictReplaces AS c WHERE a.TraitType = b.TraitType AND c.CivUniqueDistrictType = b.DistrictType;
DELETE FROM Projects WHERE (Projects.PrereqDistrict IN (SELECT RD_civType_uniqueDistrictType.UniqueDistrictType FROM RD_civType_uniqueDistrictType) AND Projects.ProjectType LIKE 'PROJECT_REMOVE_%');