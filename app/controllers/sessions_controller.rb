class SessionsController < ApplicationController
  
  include SessionsHelper 
  include ApplicationHelper
  protect_from_forgery
  

  def new
  end

  def create
  username=params[:session][:username]
  password=params[:session][:password]
  admin = Admin.where(:username=> "#{username}" , :password => "#{password}")
    if admin.any?
      sign_in(admin)
      flash[:success] = "Welcome to the India Payroll App!"
      render "admins/index"
    else
      flash.now[:error] = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
    flash[:success] ="succefully logout the PayRoll Application"
  end
  
  
end

