Rails.application.routes.draw do
  root 'top#index'

  resource :sample, only: [:show, :update]
end
