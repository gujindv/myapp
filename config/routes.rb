require 'sidekiq/web'
Sidekiq::Web.set :session_secret, Rails.application.secrets[:secret_key_base]

Rails.application.routes.draw do

  # write your routes here

  mount Sidekiq::Web => '/sidekiq'
  mount StatusPage::Engine => '/'
  #mount ActionCable.server => '/cable'
  root to: 'matters#index'
  resources :matters, only: [:index, :show] do
    collection do
      get :search
    end
  end
end
