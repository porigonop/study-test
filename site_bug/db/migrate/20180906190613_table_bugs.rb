class TableBugs < ActiveRecord::Migration
  def change
    create_table :bugs
    add_column :bugs, :title, :string
    add_column :bugs, :description, :text
    add_column :bugs, :state, :integer
  end
end
