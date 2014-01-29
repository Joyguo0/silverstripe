<?php
class HomePage extends Page {
	
}
class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array('BrowserPollForm');
	public function LatestNews($num = 5) {
		$holder = ArticleHolder::get ()->First ();
		return ($holder) ? ArticlePage::get ()->filter ( 'ParentID', $holder->ID )->sort ( 'Date DESC' )->limit ( $num ) : false;
	}

	public function BrowserPollForm() {
		// Create fields
		$fields = new FieldList(
				new TextField('Name'),
				new OptionsetField('Browser', 'Your Favourite Browser', array(
						'Firefox' => 'Firefox',
						'Chrome' => 'Chrome',
						'Internet Explorer' => 'Internet Explorer',
						'Safari' => 'Safari',
						'Opera' => 'Opera',
						'Lynx' => 'Lynx'
				))
		);

		// Create actions
		$actions = new FieldList(
				new FormAction('doBrowserPoll', 'Submit')
		);

		return new Form($this, 'BrowserPollForm', $fields, $actions);
	}

}