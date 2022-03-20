<?php

class Settings {

  public static $siteRoot = '/var/www/html';
  public static $recordedFilesDestination = '/tmp/ripps';
  public static $language = 'en'; //valid values are 'de', 'en', 'fr', 'sk'
  public static $locale = 'C'; // default is 'C'; other possible locales: 'de_AT.UTF-8' to enable all corresponding characters for the filename
  public static $defaultStreamripperParams = '';	// adds streamripper params to each call
  public static $addDatePrefixToFilename = null;	// prefix format (e.g. 'Y-m-d') or null if no prefix to add
  public static $postCommand = '';	// command to be executed after the recording is finished
  public static $logThreshold = 4; //Level of log messages, possible values : LEVEL_DEBUG=4, LEVEL_INFO=3, LEVEL_WARN=2, LEVEL_ERROR=1

}

?> 
