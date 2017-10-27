class AdminController < ApplicationController
	layout 'admin'
	before_action :authenticate_user!
	before_action :is_admin?
	def is_admin?
  	if current_user.admin?
    	true
  	else
   		render :text => "You are not authorised to perform this action", :status => :unauthorized
  	end
  end

	def index
		
	end
end
