class Client < ApplicationRecord
  has_many :rentals

  def identification
    "#{name} - #{document}" # concatenando nome e cpf 
  end
end
