Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :hotels, only: %w[index show]
      resources :geocoder, only: %w[index]
    end
  end

  root 'hotel_list_app#index'
  resources :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
