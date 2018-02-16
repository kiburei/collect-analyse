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

	def download
		@instagram_user = InstagramUser.all
		respond_to do |format|
			format.csv { send_data @instagram_user.to_csv, filename: "instagram_user.csv" }
		end
	end

	private

	def instagram_user_params
		params.permit(:year, :hits)
	end

end
