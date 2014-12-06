class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :character, dependent: :destroy, autosave: true, inverse_of: :user
  accepts_nested_attributes_for :character
  #self.primary_key = :email
end
