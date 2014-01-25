GameStats::Application.routes.draw do

  root "welcome#index"
  resources :apps do
    resources :payments
    resources :players
    resources :ftes
    resources :logins

    collection do
      get :ftes
      get :retentions
    end
  end

  resources :accounts

  resources :clients


end
