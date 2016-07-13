class CreatePaintJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :paint_jobs do |t|
      t.string :customer
      t.text :description

      t.timestamps
    end
  end
end
