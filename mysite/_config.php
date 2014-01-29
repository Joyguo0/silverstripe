<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root123',
	"database" => 'ss_mysite',
	"path" => '',
);

// Set the site locale
i18n::set_locale('zh_CN');
Director::set_environment_type("dev");