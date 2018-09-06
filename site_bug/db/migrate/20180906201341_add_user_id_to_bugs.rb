class AddUserIdToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :owner_id, :integer
    add_index :bugs, :owner_id
  end
end
