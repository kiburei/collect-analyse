class DataCollectionController < ApplicationController
    before_action :authenticate_admin!, :except => [:internet_user, :dashboard]

    def admin

    end

    def internet_user
      render json: InternetUser.group(:year).sum(:hits)
    end

    def dashboard
      @source = Source.all
      @internet_data = InternetUser.group(:year).sum(:hits)
      @mobile_data = MobileUser.group(:year).sum(:hits)
      @facebook_data = FacebookUser.group(:year).sum(:hits)
      @twitter_data = TwitterUser.group(:year).sum(:hits)
      @instagram_data = InstagramUser.group(:year).sum(:hits)
      @whatsapp_data = WhatsappUser.group(:year).sum(:hits)
      @linkedin_data = LinkedinUser.group(:year).sum(:hits)
      @telegram_data = TelegramUser.group(:year).sum(:hits)

    end

end
