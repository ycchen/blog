
$('#comments_count').html '<% @post.comments.count %>'
$('#<%= dom_id(@comment) %>').faseOut -> $(this).remote()