UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination='2' WHERE DistrictType='DISTRICT_COMMERCIAL_HUB' AND YieldType='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination='2' WHERE DistrictType='DISTRICT_SUGUBA' AND YieldType='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination='2' WHERE DistrictType='DISTRICT_HARBOR' AND YieldType='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination='2' WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD' AND YieldType='YIELD_GOLD';
UPDATE District_TradeRouteYields SET YieldChangeAsInternationalDestination='2' WHERE DistrictType='DISTRICT_COTHON' AND YieldType='YIELD_GOLD';

DELETE FROM District_TradeRouteYields WHERE DistrictType='DISTRICT_GOVERNMENT';
DELETE FROM District_TradeRouteYields WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
INSERT INTO District_TradeRouteYields(DistrictType, YieldType, YieldChangeAsOrigin, YieldChangeAsDomesticDestination, YieldChangeAsInternationalDestination) VALUES
		('DISTRICT_GOVERNMENT',			'YIELD_FOOD',		0,						1,									0),
		('DISTRICT_GOVERNMENT',			'YIELD_PRODUCTION',	0,						1,									0),
		('DISTRICT_GOVERNMENT',			'YIELD_GOLD',		0,						0,									3),
		('DISTRICT_DIPLOMATIC_QUARTER',	'YIELD_FOOD',		0,						1,									0),
		('DISTRICT_DIPLOMATIC_QUARTER',	'YIELD_PRODUCTION',	0,						1,									0),
		('DISTRICT_DIPLOMATIC_QUARTER',	'YIELD_GOLD',		0,						0,									3),
		('DISTRICT_AERODROME',		'YIELD_PRODUCTION',		0,						1,									1),
		('DISTRICT_PRESERVE',		'YIELD_FOOD',			0,						1,									1);
