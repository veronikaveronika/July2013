module ApplicationHelper

	def nav_item(title, path = nil, opts = {}, &block)
		if block
			opts = path
			path = title
			content_tag(:li, link_to(path, opts, &block),        class: ('active' if current_page?(path)))
		else
			content_tag(:li, link_to(title, path, opts, &block), class: ('active' if current_page?(path)))
		end
	end
end
