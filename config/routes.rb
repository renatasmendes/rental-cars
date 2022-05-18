Rails.application.routes.draw do
  root to: 'home#index' #home é o controller e index a ação (método). Aponta para o arquivo home_controller.rb
  resources :manufacturers, only: [:index, :show, :new, :create] #manufacturers é o nome no plural da model. É uma boa prática. O only é pra dizer que a unica rota do manufacturers é a index pois por padrão já cria destroy, update, show e etc. Ao executar o rails routes vai sumir ficando apenas a index do manufacturers
end
