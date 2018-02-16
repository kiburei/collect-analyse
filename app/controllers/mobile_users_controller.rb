class MobileUsersController < ApplicationController

	def create
		@mobile_user = MobileUser.new(mobile_user_params)
		respond_to do |format|
			if @mobile_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end

	def download
		@mobile_users = MobileUser.all
		respond_to do |format|
			format.csv { send_data @mobile_users.to_csv, filename: "mobile_users.csv" }
		end
	end

	private

	def mobile_user_params
		params.permit(:year, :hits)
	end

end
