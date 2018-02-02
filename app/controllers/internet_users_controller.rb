class InternetUsersController < ApplicationController

	def create
		@internet_user = InternetUser.new(internet_user_params)
		respond_to do |format|
			if @internet_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end

	private

	def internet_user_params
		params.permit(:year, :hits)
	end

end
