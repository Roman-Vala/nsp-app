class Measurement < ApplicationRecord
  belongs_to :paint_job
  validates :lenght, :width, numericality: true

  validates :lenght, :width, presence: true

  




end
