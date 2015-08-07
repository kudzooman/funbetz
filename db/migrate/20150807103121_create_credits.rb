class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
