Rails.application.routes.draw do
  devise_for :admins
  resources :admins
  root 'home#index'
  devise_for :doctors
  devise_for :patients
  resources :drugstore_medicines
  resources :drugstores
  resources :doctor_prescriptions
  resources :medicines
  resources :doctors
  resources :hospitals
  resources :patients
end