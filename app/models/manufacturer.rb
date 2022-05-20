class Manufacturer < ApplicationRecord
  validates :name, presence: { message: 'Nome não pode ficar em branco' }  #Campo nome não pode ficar vazio
  validates :name, uniqueness: { message: 'Nome deve ser único' }  #quando você coloca qualquer coisa depois do método (uniqueness, ou presence) que não seja nil ou false, 
                                                                   #o código já entende que você passando como true
end
