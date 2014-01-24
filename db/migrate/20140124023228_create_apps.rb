class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :client_id
      t.string :key
      t.string :secret

      t.timestamps
    end
  end
end
