class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user
      session[:user_id] = user.id
      redirect_to root_url
    else
      # redirect_to root_url, :notice => "Nice try!"
      render 'new'
    end
  end
end
