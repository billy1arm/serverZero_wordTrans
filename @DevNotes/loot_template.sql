/*Table structure for table `loot_template` */

DROP TABLE IF EXISTS `loot_template`;

CREATE TABLE `loot_template` (
  `entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'entry 0 used for player insignia loot',
  `lootTypeId` TINYINT(2) UNSIGNED NOT NULL,
  `item` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` FLOAT NOT NULL DEFAULT '100',
  `groupid` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `mincountOrRef` MEDIUMINT(9) NOT NULL DEFAULT '1',
  `maxcount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  `condition_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`lootTypeId`,`item`),
  KEY `entry` (`entry`,`lootTypeId`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


/* 
1 = creature_loot_template
2 = disenchant_loot_template
3 = fishing_loot_template
4 = gameobject_loot_template
5 = item_loot_template
6 = mail_loot_template
7 = milling_loot_template
8 = pickpocketing_loot_template
9 = prospecting_loot_template
10 = reference_loot_template
11 = skinning_loot_template
12 = spell_loot_template
*/

-- creature_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
) 
SELECT   `entry`,1,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `creature_loot_template`;

-- disenchant_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,2,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `disenchant_loot_template`;

-- fishing_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,3,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `fishing_loot_template`;

-- gameobject_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
) 
SELECT   `entry`,4,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `gameobject_loot_template`;

-- item_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,5,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `item_loot_template`;

-- mail_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,6,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `mail_loot_template`;

-- pickpocketing_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,8,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `pickpocketing_loot_template`;

-- reference_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,10,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `reference_loot_template`;

-- skinning_loot_template
INSERT INTO `loot_template` (`entry`,lootTypeId,`item`,`ChanceOrQuestChance`,`groupid`, `mincountOrRef`,`maxcount`,`condition_id`
)
SELECT   `entry`,11,`item`,  `ChanceOrQuestChance`,  `groupid`,  `mincountOrRef`,  `maxcount`,  `condition_id` FROM `skinning_loot_template`;

/*
SELECT * FROM creature_loot_template WHERE entry=3; -- Exec 0.007s Total: 0.029s 57 Rows

SELECT * FROM creature_loot_template WHERE entry=61; -- Exec 0.015s Total: 0.069s 57 Rows
SELECT * FROM loot_template WHERE entry=61 AND loottypeid=1; -- Exec 0.014s Total: 0.066s 57 Rows

SELECT * FROM creature_loot_template WHERE entry=61 AND item=2406; -- Exec 0.014s Total: 0.065s 1 Rows
SELECT * FROM loot_template WHERE entry=61 AND loottypeid=1 AND item=2406; -- Exec 0.014s Total: 0.064s 1 Rows
*/
