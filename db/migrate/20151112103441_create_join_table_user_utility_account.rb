class CreateJoinTableUserUtilityAccount < ActiveRecord::Migration
  def change
    create_join_table :users, :utility_accounts do |t|
      t.index [:user_id, :account_no]
      t.index [:account_no, :user_id]
    end
  end
end
