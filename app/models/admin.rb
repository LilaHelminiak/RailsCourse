class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :validatable, :recoverable, :rememberable and :omniauthable, :registerable
  devise :database_authenticatable, :trackable, :timeoutable, :lockable
end
