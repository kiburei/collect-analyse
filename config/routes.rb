Rails.application.routes.draw do
  resources :reports
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'data_collection#dashboard'
  # dashboard chart routes
  get 'data_collection/admin', :to => 'data_collection#admin'
  get 'data_collection/dashboard', :to => 'data_collection#dashboard'
  get 'data_collection/internet_user', :to => 'data_collection#internet_user'
  get 'data_collection/mobile_user', :to => 'data_collection#mobile_user'
  get 'data_collection/facebook_user', :to => 'data_collection#facebook_user'
  get 'data_collection/twitter_user', :to => 'data_collection#twitter_user'
  get 'data_collection/whatsapp_user', :to => 'data_collection#whatsapp_user'
  get 'data_collection/linkedin_user', :to => 'data_collection#linkedin_user'
  get 'data_collection/telegram_user', :to => 'data_collection#telegram_user'
  get 'data_collection/instagram_user', :to => 'data_collection#instagram_user'
  # export resources routes
  get 'internet_users/download' => 'internet_users#download', :defaults => { :format => 'csv' }
  get 'mobile_users/download' => 'mobile_users#download', :defaults => { :format => 'csv' }
  get 'facebook_users/download' => 'facebook_users#download', :defaults => { :format => 'csv' }
  get 'twitter_users/download' => 'twitter_users#download', :defaults => { :format => 'csv' }
  get 'instagram_users/download' => 'instagram_users#download', :defaults => { :format => 'csv' }
  get 'whatsapp_users/download' => 'whatsapp_users#download', :defaults => { :format => 'csv' }
  get 'linkedin_users/download' => 'linkedin_users#download', :defaults => { :format => 'csv' }
  # controller actions
  resources 'internet_users'
  resources 'mobile_users'
  resources 'facebook_users'
  resources 'twitter_users'
  resources 'instagram_users'
  resources 'whatsapp_users'
  resources 'linkedin_users'
  resources 'sources'

end
