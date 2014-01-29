<?php
class ArticlePage extends Page {
	private static $db = array(
			'Date' => 'Date',
			'Author' => 'Text'
	);
	private static $icon = "framework/docs/en/tutorials/_images/treeicons/news-file.gif";
	public function getCMSFields() {
		
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Article Date (for example: 30/12/2010)'), 'Content');
		$dateField->setConfig('showcalendar', true);
		$dateField->setConfig('dateformat', 'dd/MM/YYYY');
		$fields->addFieldToTab('Root.Main', $dateField, 'Content');
		$fields->addFieldToTab('Root.Main', new TextField('Author'), 'Content');
		
		return $fields;
	}
}
class ArticlePage_Controller extends Page_Controller {
}