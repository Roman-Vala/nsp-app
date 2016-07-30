class AddSquareToMeasurements < ActiveRecord::Migration[5.0]
  def change
    add_column :measurements, :square, :float
  end
end
