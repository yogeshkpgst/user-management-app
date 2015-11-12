class UtilityInfo < ActiveRecord::Base

 attr_accessible :utility_no, :utility_name, :utility_company


  def self.search(search, id)
    if search
      where("utility_no LIKE ?", "%#{search}%")      
    else
      find(:all)
    end
  end

end
