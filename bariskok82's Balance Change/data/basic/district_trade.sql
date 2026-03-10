DELETE FROM District_TradeRouteYields WHERE DistrictType='DISTRICT_GOVERNMENT';
DELETE FROM District_TradeRouteYields WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER';
INSERT INTO District_TradeRouteYields(DistrictType, YieldType, YieldChangeAsOrigin, YieldChangeAsDomesticDestination, YieldChangeAsInternationalDestination) VALUES
	('DISTRICT_GOVERNMENT',				'YIELD_FOOD',			0,			1,			0),
	('DISTRICT_GOVERNMENT',				'YIELD_PRODUCTION',		0,			1,			0),
	('DISTRICT_GOVERNMENT',				'YIELD_GOLD',			0,			0,			3),
	('DISTRICT_DIPLOMATIC_QUARTER',		'YIELD_FOOD',			0,			1,			0),
	('DISTRICT_DIPLOMATIC_QUARTER',		'YIELD_PRODUCTION',		0,			1,			0),
	('DISTRICT_DIPLOMATIC_QUARTER',		'YIELD_GOLD',			0,			0,			3);
