class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    @car_categories = CarCategory.all # será usado em new de rental
    @clients = Client.all # será usado em new de rental
  end

  def create
    @rental = Rental.new(params.require(:rental).permit(:start_date, :end_date, :car_category_id, :client_id))
    if @rental.save
      redirect_to rentals_path
    else
      @car_categories = CarCategory.all 
      @clients = Client.all 
      render :new
    end
  end
end