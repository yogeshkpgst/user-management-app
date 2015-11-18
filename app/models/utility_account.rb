class UtilityAccount < ActiveRecord::Base

  has_and_belongs_to_many :users

  attr_accessible :account_no, :utility_name, :address, :zip_code

  def self.search(search, id)
    if search
      where(["account_no LIKE ", "%#{search}%"])      
    else
      find(:all)
    end
  end

end
