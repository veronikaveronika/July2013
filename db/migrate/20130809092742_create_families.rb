class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.text :desc

      t.timestamps
    end
  end
end
