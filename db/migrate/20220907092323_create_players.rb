class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :player_age
      t.string :player_gender
      t.string :player_type
      t.integer :team_id, foreign_key: true
      t.timestamps
    end
  end
end
