class AddBetToCards < ActiveRecord::Migration
  def change
    add_column :cards, :bet_id, :integer
    add_index :cards, :bet_id
  end
end
