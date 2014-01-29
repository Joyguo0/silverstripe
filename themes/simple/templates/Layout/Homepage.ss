<div id="BrowserPoll">
    <h2>Browser Poll</h2>
    $BrowserPollForm
</div>
<!-- ... -->
<div class="content">$Content</div>
</article>
<% loop $LatestNews %>
    <% include ArticleTeaser %>
<% end_loop %>