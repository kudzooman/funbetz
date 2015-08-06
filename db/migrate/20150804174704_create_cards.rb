class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.datetime :name

      t.timestamps null: false
    end
  end
end
