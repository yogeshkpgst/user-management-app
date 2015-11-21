class UtilityAccount < ActiveRecord::Base

  has_one :user_utility_accounts
  has_one :users, through: :user_utility_accounts
 
  belongs_to :user

  def self.search(search)
    UtilityAccount.where(account_no: "#{search}")
  end

  def self.insert(account_no, user_id)
    current_user = current_user.id
    UtilityAccount.connection.insert("INSERT INTO users_utility_accounts (account_no, user_id) VALUES('#{account_no}', '#{user_id}') ");
  end


  #INSERT INTO `users_utility_accounts` (`user_id`, `utility_account_id`) VALUES ('1', '1')user.utility_accounts;
 
  attr_accessible :account_no, :utility_name, :utility_company, :street1, :street2, :city, :state, :country, :zip_code, :user_id

end

