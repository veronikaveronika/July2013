class AddAdoptedToChild < ActiveRecord::Migration
  def change
    add_column :children, :adopted, :boolean
  end
end
