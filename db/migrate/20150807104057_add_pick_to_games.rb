class AddPickToGames < ActiveRecord::Migration
  def change
    add_column :games, :pick_id, :integer
    add_index :games, :pick_id
  end
end
