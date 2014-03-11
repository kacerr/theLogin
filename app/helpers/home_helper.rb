module HomeHelper
	def login_info
		out = ""
		session[:omniauth_data].info.each do |key, value|
			out += hash_to_html key, value, 0
			#out += "#{key}: #{value} <br>"
		end
		out
	end

	def login_extra
		out = ""
		session[:omniauth_data].extra.each do |key, value|
			out += hash_to_html key, value, 0
		end
		out
	end
end
