Rails.application.routes.draw do
  resources :medicines
  resources :doctors
  resources :hospitals
  resources :patients
  root 'home#index'
end