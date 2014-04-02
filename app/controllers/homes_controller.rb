class HomesController < ApplicationController 
	before_filter :check_loged_in_user
	def show
		
	end

	private
def check_loged_in_user
	if signed_in?
		redirect_to dashboard_path
	end
end
end