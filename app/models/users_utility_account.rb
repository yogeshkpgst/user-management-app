class UsersUtilityAccount < ActiveRecord::Base
  belongs_to :user
  belongs_to :utility, :dependent => :destroy

#before_create :check_exists
  #def check_exists
    #users_utility_account = UsersUtilityAccount.find_by(:user_id => self.user.id, :utility_account_id => self.utility_account_id)
     # if users_utility_account != nil
    #    self.id = users_utility_account.id
   #   end
  #end

end


