class WhatsappUsersController < ApplicationController
	
	def create
		@whatsapp_user = WhatsappUser.new(whatsapp_user_params)
		respond_to do |format|
			if @whatsapp_user.save
				format.html { redirect_to root_path, notice: 'New Internet Record Added' }
			else
				format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
			end
		end
	end
	
	private

	def whatsapp_user_params
		params.permit(:year, :hits)
	end

end
