class CatRentalRequest < ApplicationRecord
  
  validates :cat_id, :start_date, :end_date, :status, presence: true 
  
  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: 'Cat'
    
  def over_lapping_requests
    results = CatRentalRequest.where("cat_id = #{self.cat_id} AND id != #{self.id}") 
    
    results.each do |request|
      if request.end_date > self.start_date
         self.errors.full_messages << "Overlapping Requests"
         raise self.errors.full_messages
      else
         next
      end  
    end 
    self
  end 
  
end 