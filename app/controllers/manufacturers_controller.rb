class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy] #esse método só vale para os métodos show, edit e update
    def index
        @manufacturers = Manufacturer.all #manufacturers (vai usar na view) é a variável que vai guardar todas os registros dessa tabela
                                          #sempre que tiver @ é pra essa variável ser usada na view
    end

    def show
    end

    def new
        @manufacturer = Manufacturer.new
    end

    def create
      @manufacturer = Manufacturer.new(manufacturer_params)

      if @manufacturer.save
        redirect_to @manufacturer
      else
        render 'new' #redireciona para view do manufacturer
      end
    end

    def edit
    end

    def update
      if @manufacturer.update(manufacturer_params)
        redirect_to @manufacturer
      else
        render 'edit'
      end
    end

    def destroy
      @manufacturer.delete
      redirect_to manufacturers_path
    end

    private

    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end 

    def manufacturer_params
      # { name: params[:manufacturer][:name] }
      params.require(:manufacturer).permit(:name)
    end
end

