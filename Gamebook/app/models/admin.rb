class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :omniauthable, :recoverable, :rememberable,  :validatable, :registerable
    devise :database_authenticatable, :trackable, :timeoutable, :lockable      
    self.primary_key = :email
end
