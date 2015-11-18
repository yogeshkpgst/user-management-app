class CreateJoinTableUserUtilityAccount < ActiveRecord::Migration
  def change
    create_join_table :users, :utility_accounts do |t|
      t.index [:user_id, :utility_account_id]
      t.index [:utility_account_id, :user_id]
    end
  end
end
