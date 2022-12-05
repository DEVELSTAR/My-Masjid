Rails.application.routes.draw do
  devise_for :users
  
  resources :users do
    member do
      get :imam
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
  end

  get 'home/all_imam'
  get 'home/job_imam'
  root 'home#index'
end