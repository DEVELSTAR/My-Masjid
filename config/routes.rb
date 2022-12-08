Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  
  resources :users do
    member do
      put :update_status
    end

    collection do
      get :job_imam
      get :all_imam
    end
  end

  resources :masjids do
    member do
      put :update_status
    end

    collection do 
      get :empty_masjid
    end
    resources :masjids_members
  end
end