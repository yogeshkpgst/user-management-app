class SamplesController < ApplicationController
	
	def insert
    	@sample =  Sample.insert(params[:name1],[:name2])
    	Rails.logger.debug("My search  object: #{@sample.inspect}")
  	end
end
