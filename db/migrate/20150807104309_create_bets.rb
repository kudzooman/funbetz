class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :amount

      t.timestamps null: false
    end
  end
end