UPDATE Buildings SET OuterDefenseHitPoints=50 WHERE BuildingType='BUILDING_WALLS';
UPDATE Buildings SET OuterDefenseHitPoints=70, Cost=200 WHERE BuildingType='BUILDING_CASTLE';
UPDATE Buildings SET OuterDefenseHitPoints=80 WHERE BuildingType='BUILDING_STAR_FORT';
UPDATE ModifierArguments SET Value=300 WHERE ModifierId='STEEL_UNLOCK_URBAN_DEFENSES' AND Name='DefenseValue';
