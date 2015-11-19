class UtilityAccount < ActiveRecord::Base

  belongs_to :user
 
  def self.search(search)
    UtilityAccount.where(account_no: "#{search}")
  end

  #def utility_parameter
    #utility_parameter.for(:utilityaccount) { |u| u.permit(:account_no, :utility_name, :address, :zip_code) }
  #end 
 
  attr_accessible :account_no, :utility_name, :address, :zip_code 

end