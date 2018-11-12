Rails.application.routes.draw do
  resources :hospitals
  resources :patients
  root 'home#index'
end