<?php
class EventAdmin extends ModelAdmin {
  private static $managed_models = array('Event'); // Can manage multiple models
  private static $url_segment = 'event'; // Linked as /admin/products/
  private static $menu_title = 'Event Admin';
}