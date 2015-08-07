class AddCreditsToUser < ActiveRecord::Migration
  def change
    add_column :users, :credit_id, :integer
    add_index :users, :credit_id
  end
end
