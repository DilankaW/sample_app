class User < ActiveRecord::Base
  attr_accessible :name, :email

  # regular expression to match proper email format
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # check username for existence and length
  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 }
                    
  # check email for existence, format and uniqueness                  
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }
end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

