<?php
class ArticleHolder extends Page {
    private static $allowed_children = array('ArticlePage');
    private static $icon = "framework/docs/en/tutorials/_images/treeicons/news-file.gif";
}
class ArticleHolder_Controller extends Page_Controller {
}