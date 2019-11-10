Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  get "*path", to: "pages#index"
end
