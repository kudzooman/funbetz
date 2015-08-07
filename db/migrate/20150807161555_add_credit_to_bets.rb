class AddCreditToBets < ActiveRecord::Migration
  def change
    add_column :bets, :credit_id, :integer
    add_index :bets, :credit_id
  end
end
