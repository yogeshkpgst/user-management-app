class UtilityAccountsController < ApplicationController

  before_action :authenticate_user!

  def index    
    @utility_account = UtilityAccount.search(params[:search])
    #Rails.logger.debug("My search  object: #{@utility_account.inspect}")
  end


end



