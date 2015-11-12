class EnergyController < ApplicationController

  before_action :authenticate_user!

  def myenergy
  end



  

 def utility_infos_params
   params.require(:utility_infos).permit(:utility_no, :utility_name, :utility_company)
 end

end
