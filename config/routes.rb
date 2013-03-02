Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :faqs do 
    member do
      get :answer
    end
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :feed_backs
  resources :blood_requests
end