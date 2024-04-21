class CreateContests < ActiveRecord::Migration[7.0]
  def change
    create_table :contests do |t|
      t.string :contest_name
      t.integer :match_id, foreign_key: true
      t.timestamps
    end
  end
end
