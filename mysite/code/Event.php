<?php
class Event extends Page {
	private static $db = array(
			'StartTime' => 'Date',
			'EndTime' => 'Date',
	);
	public function getCMSFields() {
		
		$fields = parent::getCMSFields();
		
		$startTime = new DateField('StartTime','StartTime');
		$startTime->setConfig('showcalendar', true);
		$startTime->setConfig('dateformat', 'dd/MM/YYYY');
		$fields->addFieldToTab('Root.Main', $startTime, 'Content');
		
		$endTime = new DateField('EndTime','EndTime');
		$endTime->setConfig('showcalendar', true);
		$endTime->setConfig('dateformat', 'dd/MM/YYYY');
		$fields->addFieldToTab('Root.Main', $endTime, 'Content');
		
		
		return $fields;
	}
}
class Event_Controller extends Page_Controller {
}