class Manufacturer < ApplicationRecord
  validates :name, presence: { message: 'Nome não pode ficar em branco' }  #Campo nome não pode ficar vazio
end
