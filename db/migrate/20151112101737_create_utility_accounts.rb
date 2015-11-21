class CreateUtilityAccounts < ActiveRecord::Migration
  def change
    create_table :utility_accounts do |t|
      t.integer :account_no
      t.string :utility_name
      t.string :utility_company
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
