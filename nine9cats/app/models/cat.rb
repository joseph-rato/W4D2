require 'action_view'
require 'action_view/helpers'
include ActionView::Helpers::DateHelper

class Cat < ApplicationRecord 
  validates :name, :birth_date, :color, :sex, :description, presence: true
  validates :sex, inclusion: { in: %w(M F), message: "%{value} is not valid"} 
  
  has_many :requests,
    foreign_key: :cat_id,
    class_name: 'CatRentalRequest',
    dependent: :destroy
  
  
end