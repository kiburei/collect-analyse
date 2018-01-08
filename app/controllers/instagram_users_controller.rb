class InstagramUsersController < ApplicationController

	def create
		@instagram_user = InstagramUser.new(instagram_user_params)
		respond_to do |format|
			if @instagram_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end
	
	private

	def instagram_user_params
		params.permit(:year, :hits)
	end

end
