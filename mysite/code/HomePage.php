<?php
class HomePage extends Page {

}
class HomePage_Controller extends Page_Controller {
	private static $allowed_actions = array ('BrowserPollForm' );
	
	public function init() {
		parent::init();
		Requirements::block('framework/thirdparty/jquery/jquery.js');
	}
	
	function RotateImages() {
		$folder = DataObject::get_one ( "Folder", "Filename = 'assets/Uploads/'" );
		return $folder ? DataObject::get ( "Image", "ParentID = '{$folder->ID}'" ) : false;
	
	}
	
	public function BrowserPollForm() {
		// Create fields
		$fields = new FieldList ( new TextField ( 'Name' ), new OptionsetField ( 'Browser', 'Your Favourite Browser', array ('Firefox' => 'Firefox', 'Chrome' => 'Chrome', 'Internet Explorer' => 'Internet Explorer', 'Safari' => 'Safari', 'Opera' => 'Opera', 'Lynx' => 'Lynx' ) ) );
		
		// Create actions
		$actions = new FieldList ( new FormAction ( 'doBrowserPoll', 'Submit' ) );
		
		return new Form ( $this, 'BrowserPollForm', $fields, $actions );
	}
	public function doBrowserPoll($data, $form) {
		$submission = new BrowserPollSubmission();
		$form->saveInto($submission);
		$submission->write();
		Session::set('BrowserPollVoted', true);
		return $this->redirectBack();
	}

}
