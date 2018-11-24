Rails.application.routes.draw do
  resources :add_fields_to_drugstores
  resources :add_fields_to_drugstore_medicines
  get 'checkout/:id', to: 'checkout#index', as: 'checkout'
  get 'checkout/done/:id', to: 'checkout#done', as: 'checkout_done'
  get 'patients/my_medicines'
  get 'promotion/index'
  get 'chats/index'
  get 'rainbow/index'
  mount RailsAdmin::Engine => '/cafe', as: 'rails_admin'
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
