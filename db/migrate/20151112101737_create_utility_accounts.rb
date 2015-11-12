class CreateUtilityAccounts < ActiveRecord::Migration
  def change
    create_table :utility_accounts do |t|
      t.integer :account_no
      t.string :utility_name
      t.text :address
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
