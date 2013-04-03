class ApplicationController < ActionController::Base
  include SessionsHelper 
  include ApplicationHelper
  protect_from_forgery
  helper :all
  helper_method :authenticate, :current_user
  
   def handle_unverified_request
    sign_out
    super
  end
  
end
