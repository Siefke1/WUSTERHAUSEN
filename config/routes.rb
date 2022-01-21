Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: [:index, :show] do
    resources :offers
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
