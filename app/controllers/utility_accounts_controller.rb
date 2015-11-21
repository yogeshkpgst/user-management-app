class UtilityAccountsController < ApplicationController

  before_action :authenticate_user!

  def index
    @utility_account = UtilityAccount.search(params[:search])

   # @utility_account = UtilityAccount.insert(params[:account_no],[:user_id])
    #@user = User.find(params[:id])
  	#@user_utility_account = UserUtilityAccount.new(user_utility_account_params)
  	#@utility_account.user_id = @user.id
  	#@utility_account.save
  		#flash[:success] = "UtilityAccount Added!"
  		#redirect_to @utility_account
  end
  def add_utility
  	@utility_account = UtilityAccount.insert(params[:account_no],[:user_id])
  end
end



