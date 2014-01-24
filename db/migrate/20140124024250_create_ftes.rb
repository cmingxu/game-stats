class CreateFtes < ActiveRecord::Migration
  def change
    create_table :ftes do |t|
      t.integer :player_id
      t.integer :step
      t.datetime :pass_time
      t.integer :app_id

      t.timestamps
    end
  end
end
