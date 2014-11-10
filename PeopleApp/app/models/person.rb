class Person < ActiveRecord::Base
 has_one :contact
 has_one :pet
 accepts_nested_attributes_for :pet, :contact
end
