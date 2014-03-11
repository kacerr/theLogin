module SessionsHelper
  def signed_in?
    !current_user.nil?
  end

  def login_identifier
  	return current_user.email unless current_user.email.blank?
  	current_user.name
  end
end
