Rails.application.routes.draw do
  root to: 'home#index' #home é o controller e index a ação (método). Aponta para o arquivo home_controller.rb
  resources :manufacturers
  resources :car_categories, only: [:index, :new, :create, :show]
  resources :car_models, only: [:index, :new, :create, :show]
end
