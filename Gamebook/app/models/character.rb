class Character < ActiveRecord::Base
  has_one :attribute_set
  belongs_to :user, inverse_of: :character
end
