class AddFatherAndMotherToFamily < ActiveRecord::Migration
  def change
    add_reference :families, :father, index: true
    add_reference :families, :mother, index: true
  end
end
