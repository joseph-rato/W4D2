class Cat < ApplicationRecord 
  validates :birth_date, :name, :color, :sex, :description, presence: true
  validates :sex, inclusion: { in: %w(M F), "%{value} is not valid"} 
  
  
end