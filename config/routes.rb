Rails.application.routes.draw do
  resources :doctors
  resources :hospitals
  resources :patients
  root 'home#index'
end