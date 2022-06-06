Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index' #home é o controller e index a ação (método). Aponta para o arquivo home_controller.rb
  resources :manufacturers
  resources :car_categories, only: %i[index new create show] 
  resources :car_models, only: %i[index new create show] # %i significa que é um array de simbolos. %w array de texto (strings). Tanto escrito dessa forma, como na linha abaixo estão corretos
  resources :rentals, only: %i[index new create]
end
