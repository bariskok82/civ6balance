--  New Rewards

--  Goody Hut Subtypes
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, Turn, MinOneCity, RequiresUnit, ModifierID) VALUES 
		('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_SLINGER', 'LOC_GOODYHUT_MILITARY_GRANT_SLINGER_DESCRIPTION', 10, 10, 1, 0, 'GOODY_MILITARY_GRANT_SLINGER'),
		('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_WARRIOR', 'LOC_GOODYHUT_MILITARY_GRANT_WARRIOR_DESCRIPTION', 10, 10, 1, 0, 'GOODY_MILITARY_GRANT_WARRIOR'),
		('GOODYHUT_SCIENCE', 'GOODYHUT_SCIENCE_RELIC', 'LOC_GOODYHUT_SCIENCE_RELIC_DESCRIPTION', 10, 10, 1, 0, 'GOODY_CULTURE_GRANT_ONE_RELIC');
		
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent) VALUES 
		('GOODY_MILITARY_GRANT_SLINGER', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1),
		('GOODY_MILITARY_GRANT_WARRIOR', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1);
		
INSERT INTO ModifierArguments (ModifierId, Name, Value, Extra) VALUES 
		('GOODY_MILITARY_GRANT_SLINGER', 'UnitPromotionClassType', 'PROMOTION_CLASS_RANGED', NULL),
		('GOODY_MILITARY_GRANT_WARRIOR', 'UnitPromotionClassType', 'PROMOTION_CLASS_MELEE', NULL);

UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_EXPERIENCE';
UPDATE GoodyHutSubTypes SET Weight = 20, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SCOUT';
UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_WARRIOR';
UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SLINGER';
UPDATE GoodyHutSubTypes SET Weight = 0, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_RESOURCES';
UPDATE GoodyHutSubTypes SET Weight = 0, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_HEAL';
UPDATE ModifierArguments SET 'Value' = 50 WHERE ModifierID = 'GOODY_MILITARY_GRANT_EXPERIENCE';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 20 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SETTLER'; 
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_BUILDER';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_ADD_POP';
UPDATE GoodyHutSubTypes SET Weight = 0, Turn = 0, Trader = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_TRADER';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 20, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_GOLD';
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 10, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_GOLD';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 0, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_GOLD';
UPDATE ModifierArguments SET Value = 200 WHERE ModifierID = 'GOODY_GOLD_LARGE_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 100 WHERE ModifierID = 'GOODY_GOLD_MEDIUM_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 50 WHERE ModifierID = 'GOODY_GOLD_SMALL_MODIFIER' AND Name = 'Amount';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 20, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_FAITH';
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 20, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_FAITH';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 10, MinOneCity = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_FAITH';
UPDATE ModifierArguments SET Value = 250 WHERE ModifierID = 'GOODY_FAITH_HUGE_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 200 WHERE ModifierID = 'GOODY_FAITH_LARGE_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 100 WHERE ModifierID = 'GOODY_FAITH_MEDIUM_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 50 WHERE ModifierID = 'GOODY_FAITH_SMALL_MODIFIER' AND Name = 'Amount';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_CIVIC_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_CIVIC_BOOST';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_SCIENCE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_TECH_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH_BOOST';
UPDATE GoodyHutSubTypes SET Weight = 0, Turn = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH';

UPDATE GoodyHutSubTypes SET Weight = 10, Turn = 20 WHERE SubTypeGoodyHut = 'GOODYHUT_GOVERNOR_TITLE';
UPDATE GoodyHutSubTypes SET Weight = 30, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_FAVOR';
UPDATE GoodyHutSubTypes SET Weight = 60, Turn = 10 WHERE SubTypeGoodyHut = 'GOODYHUT_ENVOY';
UPDATE ModifierArguments SET 'Value' = 30 WHERE ModifierID = 'GOODY_DIPLOMACY_GRANT_FAVOR';