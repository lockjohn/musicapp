class SessionsController < ApplicationController
  def new #go to login page
    @user = User.new
  end

  def create #create a long-in session token and match to browser
      #find by user credentials validates correct login-pw combo
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if @user
      login!(@user)
      redirect_to user_url(@user) #show page for user
    else
      redirect_to new_session_url #back to login page
    end
  end

  def destroy #delete a session_token
    current_user.reset_session_token!
    session[:session_token] = nil
    redirect_to new_session_url
  end
end
