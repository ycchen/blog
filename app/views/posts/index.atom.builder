atom_feed do |feed|
	feed.title("My blog!")
	feed.update("@post.frist.created_at")

	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.title(post.title)
			entry.content(post.body, :type => 'html')
			entry.author { |author| author.name("Yungchih Chen")}
		end
	end
end