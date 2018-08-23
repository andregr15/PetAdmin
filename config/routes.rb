require 'sidekiq/web'

Rails.application.routes.draw do

  get 'email_confirmations/opened'
  namespace :admin do
    resources :emails
    resources :service_schedules
    resources :addresses
    resources :sells
    resources :suppliers
    resources :campaigns
    resources :discounts
    resources :services
    resources :products
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  get '/email_confirmation/:token/opened', to: 'email_confirmations#opened', controller: 'email_confirmations'

  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
