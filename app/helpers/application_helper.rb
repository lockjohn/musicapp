module ApplicationHelper

  def auth_token
    "<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}'/>".html_safe
  end
#these Should be buttons or links?
  def log_in
  "<a href='#{new_session_url}'> sign in* </a>".html_safe
  end

  def sign_up #redirect_to new user form
  "<a href='#{new_user_url}'> sign up* </a>".html_safe
  end

  
end
