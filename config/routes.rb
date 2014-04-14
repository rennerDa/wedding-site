Wedding::Application.routes.draw do

  devise_for :users
  root 'home#show'

  resources :galleries, only: [:index, :show] do
  end

  resources :pictures, only: [:show] do
    member do
      get 'thumb' => :thumb
      get 'box' => :box
    end
  end

end
