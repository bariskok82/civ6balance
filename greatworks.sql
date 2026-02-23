UPDATE GlobalParameters SET Value='0' WHERE Name='GREATWORK_ART_LOCK_TIME';

UPDATE GreatWorks SET Tourism='2' WHERE GreatWorkObjectType='GREATWORKOBJECT_WRITING';
UPDATE GreatWorks SET Tourism='3' WHERE GreatWorkObjectType='GREATWORKOBJECT_RELIGIOUS';
UPDATE GreatWorks SET Tourism='3' WHERE GreatWorkObjectType='GREATWORKOBJECT_SCULPTURE';
UPDATE GreatWorks SET Tourism='3' WHERE GreatWorkObjectType='GREATWORKOBJECT_LANDSCAPE';
UPDATE GreatWorks SET Tourism='3' WHERE GreatWorkObjectType='GREATWORKOBJECT_PORTRAIT';
UPDATE GreatWorks SET Tourism='4' WHERE GreatWorkObjectType='GREATWORKOBJECT_MUSIC';
UPDATE GreatWorks SET Tourism='6' WHERE GreatWorkObjectType='GREATWORKOBJECT_RELIC';
UPDATE GreatWorks SET Tourism='3' WHERE GreatWorkObjectType='GREATWORKOBJECT_ARTIFACT';

UPDATE GreatWork_YieldChanges SET YieldChange='2' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_WRITING');
UPDATE GreatWork_YieldChanges SET YieldChange='3' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_RELIGIOUS');
UPDATE GreatWork_YieldChanges SET YieldChange='3' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_SCULPTURE');
UPDATE GreatWork_YieldChanges SET YieldChange='3' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_LANDSCAPE');
UPDATE GreatWork_YieldChanges SET YieldChange='3' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_PORTRAIT');
UPDATE GreatWork_YieldChanges SET YieldChange='4' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_MUSIC');
UPDATE GreatWork_YieldChanges SET YieldChange='6' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_RELIC');
UPDATE GreatWork_YieldChanges SET YieldChange='3' WHERE GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType='GREATWORKOBJECT_ARTIFACT');

DELETE FROM GreatWorks WHERE GreatWorkType='GREATWORK_BABYLON_CANTEMIR_3';
DELETE FROM GreatWorks WHERE GreatWorkType='GREATWORK_BABYLON_JOPLIN_3';
UPDATE Building_GreatWorks SET NonUniquePersonYield=0, NonUniquePersonTourism=0;

INSERT INTO TechnologyModifiers(TechnologyType, ModifierId) VALUES
('TECH_PRINTING', 'PRINTING_BOOST_WRITING_CULTURE_BK');
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES
('PRINTING_BOOST_WRITING_CULTURE_BK', 'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES
('PRINTING_BOOST_WRITING_CULTURE_BK', 'GreatWorkObjectType', 'GREATWORKOBJECT_WRITING'),
('PRINTING_BOOST_WRITING_CULTURE_BK', 'YieldType', 'YIELD_CULTURE'),
('PRINTING_BOOST_WRITING_CULTURE_BK', 'YieldChange', 2);