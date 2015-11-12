class UtilityAccount < ActiveRecord::Base

  has_and_belongs_to_many :users

attr_accessible :account_no, :utility_name, :address, :zip_code

end
