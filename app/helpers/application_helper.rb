module ApplicationHelper
	def hash_to_html key, value, ident
		out = ""
		#out += "#{key}: #{value.class.to_s} <br>"
		if value.is_a?(OmniAuth::AuthHash)
			out += "#{key}:  <br>"
			ident+=1
			value.each do |k, v|
				out += hash_to_html k,v, ident
			end
		else
			ident.times { out += "&nbsp;&nbsp;" }
			out += "#{key}: #{CGI::escapeHTML(value.to_s)} <br>"
		end
		out
	end
end
