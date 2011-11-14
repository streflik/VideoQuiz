class AddCodeToWins < ActiveRecord::Migration
  def change
    add_column :wins, :code, :string
  end
end
