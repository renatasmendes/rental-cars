class CarCategory < ApplicationRecord
  validates :name, :daily_rate, :car_insurance, :third_part_insurance, presence: true # coloca os atributos e a regra da validação no final
  validates :name, uniqueness: true
  validates :daily_rate, :car_insurance, :third_part_insurance, numericality: { greater_than: 0 } #tem que ser maior que 0
end
