class DataCollectionController < ApplicationController
    before_action :authenticate_admin!, :except => [:internet_user, :mobile_user, :facebook_user, :twitter_user, :instagram_user, :whatsapp_user, :linkedin_user, :telegram_user, :dashboard]

    def admin

    end

    def internet_user
      render json: InternetUser.group(:year).sum(:hits)
    end

    def mobile_user
      render json: MobileUser.group(:year).sum(:hits)
    end

    def facebook_user
      render json: FacebookUser.group(:year).sum(:hits)
    end

    def twitter_user
      render json: TwitterUser.group(:year).sum(:hits)
    end

    def instagram_user
      render json: InstagramUser.group(:year).sum(:hits)
    end

    def whatsapp_user
      render json: WhatsappUser.group(:year).sum(:hits)
    end

    def linkedin_user
      render json: LinkedinUser.group(:year).sum(:hits)
    end

    def telegram_user
      render json: TelegramUser.group(:year).sum(:hits)
    end

    def dashboard
      @sources = Source.all
      @reports = Report.all
    end

end
