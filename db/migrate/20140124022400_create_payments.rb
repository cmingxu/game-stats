class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.integer :player_id
      t.integer :app_id
      t.string :locale
      t.string :country

      t.timestamps
    end
  end
end
