UPDATE Units SET MandatoryObsoleteTech = 'TECH_STEEL', ObsoleteCivic = NULL WHERE UnitType='UNIT_BATTERING_RAM';
UPDATE Units SET MandatoryObsoleteTech = 'TECH_STEEL', ObsoleteCivic = NULL WHERE UnitType='UNIT_SIEGE_TOWER';

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
