class UserTeamPlayer < ActiveRecord::Migration[7.0]
  create_join_table :players, :user_teams do |t|
end
end
