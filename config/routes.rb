Rails.application.routes.draw do
  namespace :admin do
      resources :analysts
      resources :pancake_analysts
      resources :juanci_analysts
      resources :salieri_analysts
      resources :articles
      resources :countries
      resources :strategies
      resources :gini_strategies
      resources :income_strategies
      resources :name_strategies
      resources :pib_strategies
      resources :university_strategies
      resources :newspapers
      resources :worlds

      root to: "analysts#index"
    end
    resources :analysts, only: [] do
      member do
        get :write
      end
    end
end
