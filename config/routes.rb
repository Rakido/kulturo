Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  namespace :contents do
    namespace :search do
      resource :duration, only: [:show, :create], controller: 'duration'
      resource :kind,     only: [:show, :create], controller: 'kind'
      resource :theme,    only: [:show, :create], controller: 'theme'
    end
  end

  resources :contents, only: [:index, :show] do
    resources :bookmarks, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
end
