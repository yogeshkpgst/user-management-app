class UtilityAccount < ActiveRecord::Base

  has_one :user

  attr_accessible :account_no, :utility_name, :address, :zip_code

  def self.search(search)
    UtilityAccount.where(account_no: "#{search}")
  end

  

end