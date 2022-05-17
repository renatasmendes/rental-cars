class ManufacturersController < ApplicationController
    def index
        @manufacturers = Manufacturer.all #manufacturers (vai usar na view) é a variável que vai guardar todas os registros dessa tabela
                                          #sempre que tiver @ é pra essa variável ser usada na view
    end
end