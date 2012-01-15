module ApplicationHelper

	def title
		base_title = "My project"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
