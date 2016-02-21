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


	# Creates something like:
	# <li><a html_options ></a>
	#   <ul> <li><a></a></li>  <li><a></a></li> </ul>
	# </li>
	def li_dropdown_list(text, url, children = {}, html_options = {})
		content_tag :li, class: active_class(url) do
			link_to(text, url, html_options) <<
				content_tag(:ul) do
					children.to_a.collect { |child|
						concat(link_to_in_li(child[0], child[1]))
					}
			end
		end
	end
end
