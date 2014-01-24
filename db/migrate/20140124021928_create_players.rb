class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :player_id
      t.string :name
      t.datetime :install_at
      t.string :locale
      t.string :language
      t.string :country

      t.timestamps
    end
  end
end
