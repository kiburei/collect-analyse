class LinkedinUsersController < ApplicationController

	def create
		@linkedin_user = LinkedinUser.new(linkedin_user_params)
		respond_to do |format|
			if @linkedin_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end

	def download
		@linkedin_user = LinkedinUser.all
		respond_to do |format|
			format.csv { send_data @linkedin_user.to_csv, filename: "linkedin_user.csv" }
		end
	end

	private

	def linkedin_user_params
		params.permit(:year, :hits)
	end

end
