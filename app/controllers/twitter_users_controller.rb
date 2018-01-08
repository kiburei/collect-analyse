class TwitterUsersController < ApplicationController

	def create
		@twitter_user = TwitterUser.new(twitter_user_params)
		respond_to do |format|
			if @twitter_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end
	
	private

	def twitter_user_params
		params.permit(:year, :hits)
	end

end
