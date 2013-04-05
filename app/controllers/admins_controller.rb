class AdminsController < ApplicationController
  before_filter :signed_in_user
  
  
  def new
  end
  
  
  def signed_in_user
      redirect_to signin_path, :notice=> "Access Deniend Please Login ." unless signed_in?
    end

end
