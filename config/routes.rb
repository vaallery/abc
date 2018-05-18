# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :hotels, only: %w[index show]
    end
  end
  root 'hotel_list_app#index'
  resources :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
