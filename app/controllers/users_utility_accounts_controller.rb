class UsersUtilityAccountsController < ApplicationController
  def new
    @users_utility_account = UsersUtilityAccount.new
  end

  def create
    @users_utility_account = UsersUtilityAccount.create(utility_params)
    if @users_utility_account.save
      flash[:success] = "Account added"
      redirect_to energy_myenergy_path
    else
      render :action => "new"
    end
  end

  def index
  end

 private
    def utility_params
      params.require(:users_utility_account).permit(:user_id, :utility_account_id)
    end 

end
