class UsersUtilityAccountsController < ApplicationController
  def new
    @users_utility_account = UsersUtilityAccount.new
  end

  #def create    
    #@users_utility_account = UsersUtilityAccount.create(utility_params)
      #if @users_utility_account.save
        #flash[:notice] = "Account added"
        #redirect_to energy_myenergy_path
      #else
        #redirect_to utility_accounts_path        
      #end    
  #end

  def create    
    @users_utility_account = UsersUtilityAccount.find_by(utility_params)
      if @users_utility_account.present?
        flash[:success] = "Account already added"
        redirect_to utility_accounts_path  
      else
        @users_utility_account = UsersUtilityAccount.create(utility_params)
        @users_utility_account.save
        flash[:notice] = "Account added"
        redirect_to energy_myenergy_path      
      end    
  end

  #find_or_create_by_user_id_and_utility_account_id(:user_id => current_user.id, :utility_account_id => self.utility_account_id)
  #@users_utility_account = UsersUtilityAccount.find_by(user_id: params[:user_id], utility_account_id: params[:utility_account_id])
 
  def index
  end


 private
    def utility_params
      params.require(:users_utility_account).permit(:user_id, :utility_account_id, :senthil)
    end 

end
