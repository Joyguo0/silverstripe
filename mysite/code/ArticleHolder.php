<?php
class ArticleHolder extends Page {
    private static $allowed_children = array('ArticlePage');
    protected $numberToDisplay = 1;
    private static $icon = "framework/docs/en/tutorials/_images/treeicons/news-file.gif";
    
    public function Articles($number=null) {
    
    	$start = isset($_REQUEST['start']) ? (int) $_REQUEST['start'] : 0;
    	if ($start < 0) {
    		$start = 0;
    	}
    
    	$articles = null;
    	$articles = ArticlePage::get()->limit(2,$start);
    	
    	$entries = PaginatedList::create($articles);
    	$entries->setPaginationFromQuery($articles->dataQuery()->query());
    
    	return $entries;
    }
}
class ArticleHolder_Controller extends Page_Controller {
	private static $allowed_actions = array(
			'rss'
	);
	public function init() {
		RSSFeed::linkToFeed($this->Link() . "rss");
		parent::init();
	}
	
	public function rss() {
		$rss = new RSSFeed($this->Children(), $this->Link(), "The coolest news around");
		return $rss->outputToBrowser();
	}
}