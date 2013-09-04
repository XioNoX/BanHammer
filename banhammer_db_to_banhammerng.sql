ALTER TABLE `blacklist_offender` ADD `suggestion` TINYINT( 1 ) NOT NULL ,
ADD `created_date` DATETIME NOT NULL ,
ADD `updated_date` DATETIME NOT NULL ,
ADD `score` BIGINT( 20 ) NOT NULL DEFAULT '0';

UPDATE blacklist_offender SET created_date = NOW(), updated_date = NOW();

ALTER TABLE `blacklist_blacklist` ADD `suggestion` TINYINT( 1 ) NOT NULL ,
ADD `type` VARCHAR( 12 ) NOT NULL ,
ADD `block_captcha` BIGINT( 20 ) NOT NULL ,
ADD `removed` TINYINT( 1 ) NOT NULL ;

UPDATE blacklist_blacklist SET type="bgp_block", block_captcha=0, removed=0;

