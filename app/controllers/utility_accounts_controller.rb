class UtilityAccountsController < ApplicationController

  before_action :authenticate_user!

  def index
    @utility_account = UtilityAccount.search(params[:search])
    #Rails.logger.debug("My search  object: #{@utility_account.inspect}")
    #@utility_account = UtilityAccount.insert(params[:utility_account_id],[:user_id])
  end
  

end



