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

	def download
		@facebook_users = FacebookUser.all
		respond_to do |format|
			format.csv { send_data @facebook_users.to_csv, filename: "facebook_users.csv" }
		end
	end

	private

	def facebook_user_params
		params.permit(:year, :hits)
	end

end
