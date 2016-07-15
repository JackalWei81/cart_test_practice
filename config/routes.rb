Rails.application.routes.draw do
  devise_for :users
  resources :products do
    member do
      put :add_to_cart
    end
  end

  #單數會少了index page，使用only，為只用列出的action
  resource :cart, only: [:show, :destroy] do
    collection do
      get :checkout
    end
  end

  resources :orders, only: [:create]

  root "products#index"
end
