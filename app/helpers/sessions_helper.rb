module SessionsHelper
 
 
 def sign_in(user)
    cookies.permanent[:remember_token] = user.id
    self.current_user = user
  end
    
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
     @current_user ||= Admin.find_by_remember_token(cookies[:remember_token])
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end


  def current_user?(user)
    user == current_user
  end
  
  def authenticate
    deny_access unless signed_in?
  end

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = admin
  end
  
  private

    def user_from_remember_token
      Admin.authenticate_with_salt(*remember_token)
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end


    def clear_return_to
      session[:return_to] = nil
    end 
  
end
