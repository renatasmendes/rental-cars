require 'rails_helper'

feature 'Admin register manufacturer' do
  scenario 'successfully' do
    # Arrange -> popular o BD
    #Act -> começa com um visit
       
    # Act
    visit root_path
    click_on 'Fabricantes'
    click_on 'Registrar novo fabricante'

    fill_in 'Nome', with: 'Fiat'
    click_on 'Enviar'

    expect(current_path).to eq manufacturer_path(Manufacturer.last)
    expect(page).to have_content('Fiat')
  end
  scenario 'and name can not be blank' do
    # Act
    visit root_path
    click_on 'Fabricantes'
    click_on 'Registrar novo fabricante'

    fill_in 'Nome', with: ''
    click_on 'Enviar'

    expect(Manufacturer.count).to eq 0
    expect(page).to have_content('não pode ficar em branco')
  end
  scenario 'and name must be unique' do
    Manufacturer.create!(name: 'Fiat')
    
    # Act
    visit root_path
    click_on 'Fabricantes'
    click_on 'Registrar novo fabricante'

    fill_in 'Nome', with: 'Fiat'
    click_on 'Enviar'
    
    expect(Manufacturer.count).to eq 1
    expect(page).to have_content('já está em uso')
  end
end