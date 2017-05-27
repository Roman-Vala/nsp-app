class AddFinishToPaintJob < ActiveRecord::Migration[5.0]
  def change
    add_column :paint_jobs, :paint_job_finish, :string
  end
end
