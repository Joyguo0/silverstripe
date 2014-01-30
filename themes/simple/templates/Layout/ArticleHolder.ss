<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">  
    <article>
        <h1>$Title</h1>
        $Content       
        <div class="content">$Content</div>
    </article>
    <% loop $Articles %>
         <% include ArticleTeaser %>
    <% end_loop %>
    
    <% if Articles.MoreThanOnePage %>
		<div id="NextPrevLinks">
		  <% if Articles.NotLastPage %>
		  <div id="NextLink">
			<p><a class="next" href="$Articles.NextLink" title="View the next page">See older articles</a></p>
		  </div>
		  <% end_if %>
		  <% if Articles.NotFirstPage %>
		  <div id="PrevLink">
			<p><a class="prev" href="$Articles.PrevLink" title="View the previous page">See newer articles</a></p>
		  </div>
		  <% end_if %>
		  <span>
			<% if Articles.PaginationSummary %><% loop Articles.PaginationSummary %>
			  <% if CurrentBool %>
				$PageNum
			  <% else %>
				<a href="$Link" title="View page number $PageNum">$PageNum</a>
			  <% end_if %>
			<% end_loop %><% end_if %>
		  </span>
		</div>
	 <% end_if %>
			
        $Form
</div>