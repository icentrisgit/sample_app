class Admin < ActiveRecord::Base
  attr_accessible :password, :username ,:remember_token
  before_save :create_remember_token
  
  
  
  
  
   class << self
    def authenticate(email, submitted_password)
      user = find_by_email(email)
      (user && user.has_password?(submitted_password)) ? user : nil
    end
    
    def authenticate_with_salt(id, cookie_salt)
      user = find_by_id(id)
      (user && user.salt == cookie_salt) ? user : nil
    end
  end
  
   private

    def create_remember_token
      self.remember_token = SecureRandom.hex
    end
    
    
  
  
end
