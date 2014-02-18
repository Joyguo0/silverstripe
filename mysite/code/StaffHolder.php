<?php
class StaffHolder extends Page {
    private static $db = array();
    private static $has_one = array('Photo' => 'Image');
    private static $allowed_children = array('StaffPage');
    
    public function getCMSFields() {
    	$fields = parent::getCMSFields();
    	 
    	$fields->addFieldToTab("Root.Images", new UploadField('Photo'));
    	 
    	return $fields;
    }
}
class StaffHolder_Controller extends Page_Controller {
}