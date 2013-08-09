class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :last_name
      t.string :middle_name
      t.string :first_name
      t.string :short_name
      t.string :sex, limit: 1
      t.date :dob
      t.string :doc
      t.string :doc_number
      t.text :desc
      t.references :family, index: true

      t.timestamps
    end
  end
end
