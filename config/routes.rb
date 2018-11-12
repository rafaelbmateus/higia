Rails.application.routes.draw do
  resources :drugstore_medicines
  resources :drugstores
  resources :doctor_prescriptions
  resources :medicines
  resources :doctors
  resources :hospitals
  resources :patients
  root 'home#index'
end