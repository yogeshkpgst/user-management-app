class UtilityAccountsController < ApplicationController

  def new
    @utility_account= UtilityAccount.new
  end

  def create	
	@utility_account = UtilityAccount.new(utilityaccount_params)
	if @utility_account.save
	  flash :success =>  "Welcome"
	  redirect_to utility_accounts_index_path
	else
	  flash :alert => "Unable to create"
	  render :action => "new"
	end
  end

  def update
    @utility_account = UtilityAccount.find(params[:id])
    if @utility_account.update_attributes(utilityaccount_params)
      redirect_to utility_accounts_index_path, :notice => "Utility Account updated."
    else
      redirect_to utility_accounts_index_path, :alert => "Unable to update Utility Account."
    end
  end

  def utility
    @utility_account = UtilityAccount.all
    if params[:search]
      @utility_account = UtilityAccount.search(params[:search])
    else
      @utility_account = UtilityAccount.all
    end
  end

  def show
    @utility_account = UtilityAccount.find(params[:id])
  end

  def index   
    @utility_account = UtilityAccount.all    
  end

  def utilityaccount_params
    params.require(:utilityaccount).permit(:account_no, :utility_name, :address, :zip_code)
  end
end
