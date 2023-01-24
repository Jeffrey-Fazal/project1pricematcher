class SessionController < ApplicationController
    def new
    redirect_to user_page_path
    end
  
    def create
      user = User.find_by :email => params[:email]
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_page_path
      else
        flash[:error] = "Invalid email or password"
        redirect_to login_path
      end      
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end

    def userlanding
    end
  end
  