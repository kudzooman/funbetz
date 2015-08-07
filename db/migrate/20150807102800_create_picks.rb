class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.boolean :select

      t.timestamps null: false
    end
  end
end
