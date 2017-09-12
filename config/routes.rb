Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    devise_for :users

    resources :chefs
    resources :meals
    resources :users

    root to: 'meals#index'

    # resources :meals do
    #     member do
    #         get 'meals' => 'meals#index'
    #     end
    # end

end
