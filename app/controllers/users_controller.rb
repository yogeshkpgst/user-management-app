class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def new
    @user= User.new
    @utility_account = @user.utility_accounts.build
  end

  def create	
    @user = User.new(sign_up_params)
	  if @user.save
		flash :success => "Welcome"
		redirect_to users_path
	  else
		render :action => "new"
	  end
  end

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(sign_up_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

 def destroy
    user = User.find(params[:id])
    authorize user
    @utility_account = UtilityAccount.find_by_id(session[:current_user_id])
    @utility_account.each do |ua|
      ua.destroy
    end
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def sign_up_params
    params.require(:user).permit(:role, :name, :email, :password, :password_confirmation, :last_name, :prefix, :suffix, :title, :street1, :street2, :city, :state, :country, :zip, :phone, :fax, :nick_name, :group, :rate_code, :ac_type, :ac_no, :utility_account_id)
  end

end
