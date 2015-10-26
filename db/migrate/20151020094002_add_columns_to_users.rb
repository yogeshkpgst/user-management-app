class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :prefix, :string, null: false, default: ""
    add_column :users, :suffix, :string, null: false, default: ""
    add_column :users, :title, :string, null: false, default: ""
    add_column :users, :street1, :text
    add_column :users, :street2, :text
    add_column :users, :city, :string, null: false, default: ""
    add_column :users, :state, :string, null: false, default: ""
    add_column :users, :country, :string, null: false, default: ""
    add_column :users, :zip, :bigint, default: 0, null: false
    add_column :users, :phone, :bigint, default: 0, null: false
    add_column :users, :fax, :bigint, default: 0, null: false
  end
end
