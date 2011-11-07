class CreateWins < ActiveRecord::Migration
  def self.up
    create_table(:wins) do |t|
      t.integer :quiz_id
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :wins
  end
end
