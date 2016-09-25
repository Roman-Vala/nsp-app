class CreatePaintJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :paint_jobs do |t|
      t.string :paint_job_customer
      t.text :description
      t.date :date_in
      t.belongs_to :customer, index: true
      


      t.timestamps
    end
  end
end
