class FacebookUsersController < ApplicationController
	# before_action :authenticate_admin!

	def create
		@facebook_user = FacebookUser.new(facebook_user_params)
		respond_to do |format|
			if @facebook_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end

	private

	def facebook_user_params
		params.permit(:year, :hits)
	end

end
