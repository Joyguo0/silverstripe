<% require javascript("themes/simple/javascript/jquery-1.7.1.min.js") %>
<% require javascript("themes/simple/javascript/bjqs-1.3.min.js") %>
<% require css("themes/simple/css/bjqs.css") %>
<% require css("themes/simple/css/demo.css") %>

 
  <div id="banner-fade">
    <ul class="bjqs">
    <% if RotateImages %> 
	     <% loop RotateImages %> 
			<li>$Tag </li>
	     <% end_loop %> 
	 <% end_if %> 
    </ul>
  </div>
  
<script class="secret-source">
        jQuery(document).ready(function($) {
          $('#banner-fade').bjqs({
            height      : 320,
            width       : 620,
            responsive  : true
          });
    });
</script>

<div id="BrowserPoll">
    <h2>Browser Poll</h2>
    $BrowserPollForm
</div>
<div class="content">$Content</div>
