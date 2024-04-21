class CreateUserTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :user_teams do |t|
      t.integer :user_id, foreign_key: true
      t.integer :contest_id, foreign_key: true
      t.integer :player_id, foreign_key:true
      t.string :player_name

      t.timestamps
    end
  end
end
