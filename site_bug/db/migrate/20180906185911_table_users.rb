class TableUsers < ActiveRecord::Migration
  def change
    create_table :users
    add_column :users, :username, :string
    add_column :users, :password, :string
  end
end
