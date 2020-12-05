require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'top#index'

  resource :sample, only: [:show, :update]
end
