class ManufacturersController < ApplicationController
    def index
        @manufacturers = Manufacturer.all #manufacturers (vai usar na view) é a variável que vai guardar todas os registros dessa tabela
                                          #sempre que tiver @ é pra essa variável ser usada na view
    end

    def show
        @manufacturer = Manufacturer.find(params[:id])
    end

    def new
        @manufacturer = Manufacturer.new
    end

    def create
      name = params[:manufacturer][:name] # a caixinha onde será inserido o valor do campo foi chamada no código por "name". Ao inspecionar essa caixinha vemos que "Name" está assim: name="manufacturer[name]"
                                          # sendo assim, tinha que quebrar nesse campo pra ficar certo. Ficando assim: params[:manufacturer][:name]                                          
      @manufacturer = Manufacturer.new
      @manufacturer.name = name

      if @manufacturer.save
        redirect_to @manufacturer
      else
        render 'new' #redireciona para view do manufacturer
      end
    end

    def update
    end
end