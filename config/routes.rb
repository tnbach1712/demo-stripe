Rails.application.routes.draw do
  get 'payments_controller/index'
  get 'payments_controller/payment'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
