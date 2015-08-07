class AddTeamToGames < ActiveRecord::Migration
  def change
    add_column :games, :team_id, :integer
    add_index :games, :team_id
  end
end
