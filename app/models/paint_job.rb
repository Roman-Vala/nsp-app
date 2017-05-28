class PaintJob < ApplicationRecord
  has_many :measurements, dependent: :destroy
  belongs_to :customer
  belongs_to :finish
end
