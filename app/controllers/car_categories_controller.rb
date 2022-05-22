class CarCategoriesController < ApplicationController
  def show
    @car_category = CarCategory.find(params[:id])
  end
  
  def new
    @carcategory = CarCategory.new
  end

  def create #Failure/Error: expect(page).to have_content('Categoria A') Capybara::ElementNotFound: Unable to find xpath "/html"
             #esse erro é pq o create não é um get, ou seja, não retorna uma view por padrão. Precisa ser criada.
    car_category_params = params.require(:car_category).permit(:name, :daily_rate, :car_insurance, :third_part_insurance) 
             # é uma variável que vai receber os valor dos params, ou seja, do que será preenchido pelo usuário através do arquivo new.html.erb
             # params.require(:car_category) --> :car_category é o nome da model dessa controller
             # no método .permit coloca os atributos que quer receber
    @car_category = CarCategory.new(car_category_params)
    @car_category.save

    redirect_to @car_category #aqui redireciona pro show. Pra isso essa rota precisa existir
  end
end