class PlayerPoint < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :playerpoint, :integer
  end
end
