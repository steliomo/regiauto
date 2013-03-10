class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :registerable, :rememberable,  :lockable, :timeoutable and :omniauthable 
  devise :database_authenticatable, :recoverable, :trackable, :validatable, :registerable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :full_name, :profile, :username, :email, :password, :password_confirmation, :remember_me
end
