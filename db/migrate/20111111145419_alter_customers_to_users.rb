class AlterCustomersToUsers < ActiveRecord::Migration
  def change
    rename_table :customers, :users
    add_column :users, :role, :string
    add_index :users, :role
  end

end
