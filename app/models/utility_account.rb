class UtilityAccount < ActiveRecord::Base

  has_many :user_utility_accounts
  has_many :users, through: :user_utility_accounts
 
  def self.search(search)
    UtilityAccount.where(account_no: "#{search}")
  end

  #def self.insert(utility_account_id, user_id)   
   # UtilityAccount.connection.insert("INSERT INTO users_utility_accounts (utility_account_id, user_id) VALUES('1', '2') ");
  #end
 
  attr_accessible :account_no, :utility_name, :utility_company, :street1, :street2, :city, :state, :country, :zip_code, :user_id

end

