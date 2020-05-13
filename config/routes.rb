Rails.application.routes.draw do
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  concern :api_base do
    resources :photos
    resources :creations
  end

  namespace :api do
    namespace :v1 do
      concerns :api_base
    end
  end
end
