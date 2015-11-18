class RegistrationsController < Devise::RegistrationsController

  def new
    @user= User.new
  end

  def create	
	  @user = User.new(sign_up_params)
	  if @user.save
		  flash :success => = "Welcome"
		  redirect_to users_path
	  else
		  render :action => "new"
	  end
  end

    def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(update_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:role, :name, :email, :password, :password_confirmation, :last_name, :prefix, :suffix, :title, :street1, :street2, :city, :state, :country, :zip, :phone, :fax, :nick_name, :group, :rate_code, :ac_type, :ac_no)
  end

  def update_params
    params.require(:user).permit(:role, :name, :email, :password, :password_confirmation, :last_name, :prefix, :suffix, :title, :street1, :street2, :city, :state, :country, :zip, :phone, :fax, :nick_name, :group, :rate_code, :ac_type, :ac_no)
  end
end

