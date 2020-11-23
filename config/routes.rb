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

    root to: 'analysts#index'
  end

  resources :analysts, only: [] do
    member do
      get :write
    end
  end

  resources :worlds, only: [] do
    member do
      get :best
    end
  end
  resources :newspapers, only: [] do
    member do
      get :create_edition
    end
  end

  resources :home, only: [] do
    collection do
      get :index
    end
  end
  resources :articles, only: [:show]
end
