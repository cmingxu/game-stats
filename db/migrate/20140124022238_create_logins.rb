class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :player_id
      t.integer :app_id
      t.string :login_at
      t.string :locale
      t.string :country

      t.timestamps
    end
  end
end
