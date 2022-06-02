class CarModel < ApplicationRecord
  belongs_to :manufacturer #significa que pertence a um fabricante
  belongs_to :car_category #significa que pertence a uma categoria
end
