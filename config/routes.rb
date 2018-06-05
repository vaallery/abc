Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :hotels, only: %w[index]
      resources :filters, only: %w[index]
      resources :geocoder, only: %w[index]
    end
  end

  root 'landing_page#index'
  get 'hotels', to: 'hotel_list_app#index'
  get 'hotels/:id', to: 'hotels#show'
end
