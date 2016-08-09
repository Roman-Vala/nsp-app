class AddDateInToPaintJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :paint_jobs, :date_in, :date
  end
end
