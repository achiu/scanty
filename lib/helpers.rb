helpers do
	def partial(page,options={})
		erb page, options.merge!(:layout => false)
	end

	def link_to(title,options={})
		"<a " + options.collect { |option,value| "#{option}=\"#{value}\"" }.join + ">" + title + "</a>"
	end

  def admin?
    request.cookies[Blog.admin_cookie_key] == Blog.admin_cookie_value
  end

  def auth
    halt [ 401, 'Not authorized' ] unless admin?
  end
end
