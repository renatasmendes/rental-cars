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
    @rental = Rental.create(params.require(:rental).permit(:start_date, :end_date, :car_category_id, :client_id))
    redirect_to rentals_path
  end
end