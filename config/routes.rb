GameStats::Application.routes.draw do

  root "welcome#index"

  get "dashboard", :to => "dashboard/base#index"
  namespace :dashboard do
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
  end


end
