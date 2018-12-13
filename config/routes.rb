Rails.application.routes.draw do
  root to: 'pages#home'
  resources :flats, only: :create
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :flats, only: :index
    end
  end
end
