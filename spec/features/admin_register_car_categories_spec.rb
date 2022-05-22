require 'rails_helper'

feature 'Admin register car categories' do
  scenario 'successfully' do
    # Arrange

    # Act
    visit root_path
    click_on 'Registrar nova categoria de carro'
    fill_in 'Nome', with: 'A'
    fill_in 'Diária', with: '50'
    fill_in 'Seguro', with: '20'
    fill_in 'Seguro para terceiros', with: '20'
    click_on 'Enviar'

    expect(page).to have_content('Categoria A')
    expect(page).to have_content('Diária: R$ 50,00')
    expect(page).to have_content('Seguro: R$ 20,00')
    expect(page).to have_content('Seguro para terceiros: R$ 20,00')
  end

    scenario 'fields can not be blank' do

        visit root_path
        click_on 'Categorias'
        click_on 'Registrar nova categoria'

        fill_in 'Categoria', with: ''
        fill_in 'Diária', with: ''
        fill_in 'Seguro do automóvel', with: ''
        # fill_in 'Seguro terceiros', with: ''
        click_on 'Enviar'

        expect(CarCategory.count).to eq 0
        expect(page).to have_content('Categoria não pode ficar em branco')
        expect(page).to have_content('Diária não pode ficar em branco')
        expect(page).to have_content('Seguro do automóvel não pode ficar em branco')
        # expect(page).to have_content('Seguro de terceiros não pode ficar em branco')
    end

    scenario 'fields daily_rate, car_insurance, t_party_insurance cannot be text' do

    end
end