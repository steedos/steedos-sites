module NavHelper
	def nav(string, id, url=nil)
		url ||= "/#{id}/"

		link = %{<a href="#{url}">#{string}</a>}

		if @item[:id] == id
		  "<li class='active'>#{link}</li>"
		else
		  "<li>#{link}</li>"
		end
	end


	def link_to_unless_current(text, target, attributes={})
	  allow_recursive = !!attributes.delete(:allow_recursive)
	  css = "item" #attributes[:class]

	  # Find path
	  path = target.is_a?(String) ? target : target.path

	  if @item_rep && @item_rep.path =~ %r!^#{path}#{allow_recursive ? '.*' : ''}$!
	    css = [css, 'active'].compact.join(' ')
	    "<a class=\"#{css}\" href=\"#{path}\">#{text}</a>"
	  else
	    "<a class=\"#{css}\" href=\"#{path}\">#{text}</a>"
	  end
	end

end

include NavHelper
include Nanoc::Helpers::Rendering
include Nanoc::Helpers::Blogging
include Nanoc::Helpers::Capturing
include Nanoc::Helpers::XMLSitemap
include Nanoc::Helpers::Text
