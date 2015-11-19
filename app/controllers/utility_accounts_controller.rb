class UtilityAccountsController < ApplicationController

  def new
    @utility_account = UtilityAccount.new
  end

  def create	
	  @utility_account = UtilityAccount.create(utility_account_params)
	  if @utility_account.save
      byebug
	    flash :success =>  "Welcome"
	    redirect_to @utility_account_path
	  else
	    redirect_to utility_accounts_new, :alert => "Unable to create"
	  end
  end

  def update
    @utility_account = UtilityAccount.find(params[:id])
    if @utility_account.update_attributes(utility_account_params)
      redirect_to utility_accounts_index_path, :notice => "Utility Account updated."
    else
      redirect_to utility_accounts_index_path, :alert => "Unable to update Utility Account."
    end
  end

  def utility   
    @utility_accounts = UtilityAccount.all
  end

  def show
    @utility_account = UtilityAccount.find(params[:id])
  end

  def index
    @utility_account = UtilityAccount.search(params[:search])    
  end

private

  def utility_account_params
    params.require(:utility_account).permit(:account_no, :utility_name, :address, :zip_code)
  end

end
