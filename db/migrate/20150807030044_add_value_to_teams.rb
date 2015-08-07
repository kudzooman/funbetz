class AddValueToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :value, :integer
  end
end
