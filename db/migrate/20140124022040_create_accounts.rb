class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.string :role

      t.timestamps
    end
  end
end
