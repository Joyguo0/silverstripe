<?php 
class ContentControllerSearchExtension extends Extension {
 
    function results($data, $form, $request) {
        $data = array(
            'Results' => $form->getResults(),
            'Query' => $form->getSearchQuery(),
            'Title' => _t('SearchForm.SearchResults', 'Search Results')
        );
        return $this->owner->customise($data)->renderWith(array('Page_results', 'Page'));
    }
}