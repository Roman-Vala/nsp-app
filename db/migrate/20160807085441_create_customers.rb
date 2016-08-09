class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :city
      t.string :state
      t.string :post_code
      t.string :phone
      t.string :phone2
      t.string :email
      t.string :email2

      t.timestamps
    end
  end
end
