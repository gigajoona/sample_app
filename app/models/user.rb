class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  # Does the user give a name?
  
  email_regex = /\A[\w+.\-]+@[a-z\d.\-]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :email, :presence => true,
                    :format => { :with => email_regex },
                    :uniqueness => {:case_sensitive => false}
  
end
