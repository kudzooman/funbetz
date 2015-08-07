class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :home
      t.float :spread
      t.string :day
      t.date :date
      t.time :time
      t.text :weather
      t.boolean :winner
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
