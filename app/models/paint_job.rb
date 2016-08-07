class PaintJob < ApplicationRecord
  has_many :measurements, dependent: :destroy
end
