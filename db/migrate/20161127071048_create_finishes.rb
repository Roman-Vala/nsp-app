class CreateFinishes < ActiveRecord::Migration[5.0]
  def change
    create_table :finishes do |t|
      t.text :description
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
