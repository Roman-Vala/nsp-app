class Measurement < ApplicationRecord
  belongs_to :paint_job
  validates :lenght, :numericality => true
  validates :width,  :numericality => true

  


end
