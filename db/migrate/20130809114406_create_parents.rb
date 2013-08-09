class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :last_name
      t.string :middle_name
      t.string :first_name
      t.string :phone
      t.string :sex
      t.date :dob
      t.string :doc
      t.string :doc_number
      t.text :desc
      t.references :family, index: true

      t.timestamps
    end
  end
end
