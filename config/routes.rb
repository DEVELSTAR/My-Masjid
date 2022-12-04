Rails.application.routes.draw do
  devise_for :users
  
  resources :users do
    member do
      put :update_status
    end
  end

  resources :masjids
  root 'home#index'
end