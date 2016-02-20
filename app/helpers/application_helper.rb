module ApplicationHelper

	def active_class(link_path)
		current_page?(link_path) ? "active" : ""
	end

	# Code from http://stackoverflow.com/questions/17481812/dynamically-add-active-class-to-bootstrap-li-in-rails
	def link_to_in_li(text, url, html_options = {})
		content_tag :li, class: active_class(url) do
			link_to text, url, html_options
		end
	end
end
