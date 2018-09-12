class CatRentalRequest < ApplicationRecord
  
  validates :cat_id, :start_date, :end_date, :status, presence: true 
  validate :overlapping_requests
  
  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: 'Cat'
    
  def overlapping_requests
    CatRentalRequest
        .where("cat_id = #{self.cat_id} AND id != #{self.id}") 
        .where.not("end_date <= #{self.start_date} OR start_date >= #{self.end_date}")
  end 
  
  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
    
  end
  
end 