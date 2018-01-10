Rails.application.routes.draw do
  root 'data_collection#index'
  get 'data_collection/dashboard', :to => 'data_collection#dashboard'
  get 'data_collection/internet_user', :to => 'data_collection#internet_user'
  resources 'internet_users'
  resources 'mobile_users'
  resources 'facebook_users'
  resources 'twitter_users'
  resources 'instagram_users'
  resources 'whatsapp_users'
  resources 'linkedin_users'

end
