class CreateMeasurements < ActiveRecord::Migration[5.0]
  def change
    create_table :measurements do |t|
      t.integer :lenght
      t.integer :width
      t.integer :amount
      t.references :paint_job, foreign_key: true

      t.timestamps
    end
  end
end
