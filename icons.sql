INSERT INTO IconDefinitions(Name, Atlas, 'Index') VALUES
		('ICON_POLICY_FOREST_RUNNERS_BK',								'ICON_ATLAS_POLICIES',			1),
		('ICON_POLICY_ZONING_BK',										'ICON_ATLAS_POLICIES',			0),
		('ICON_POLICY_SIEGE',											'ICON_ATLAS_POLICIES',			1),
		('ICON_POLICY_HARD_SHELL_EXPLOSIVES',							'ICON_ATLAS_POLICIES',			1),
		('ICON_POLICY_TRENCH_WARFARE',									'ICON_ATLAS_POLICIES',			1),
		('ICON_PROJECT_JNR_SATELLITE_MILITARY',							'ICON_ATLAS_PROJECTS',			1),
		('ICON_PROJECT_JNR_SATELLITE_BROADCAST',						'ICON_ATLAS_PROJECTS',			1),
		('ICON_PROJECT_JNR_SATELLITE_COMMUNICATION',					'ICON_ATLAS_PROJECTS',			1),
		('ICON_PROJECT_JNR_SATELLITE_SOLAR_POWER',						'ICON_ATLAS_PROJECTS',			1),
		('ICON_PROJECT_JNR_SATELLITE_WEATHER',							'ICON_ATLAS_PROJECTS',			1),
		('ICON_PROJECT_JNR_SATELLITE_ECOLOGY',							'ICON_ATLAS_PROJECTS',			1);

INSERT INTO IconDefinitions(Name, Atlas, 'Index') SELECT 'ICON_'||ProjectType, 'ICON_ATLAS_PROJECTS', 1 FROM Projects WHERE (ProjectType LIKE 'PROJECT_JNR_SATELLITE_%');	