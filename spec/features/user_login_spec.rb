require 'rails_helper'

RSpec.feature 'UserLogins', type: :feature, js: true do
  before :each do
    @user =
      User.create!(
        name: 'Ali Hashemi',
        email: 'alihashemi.ca@gmail.com',
        password: 'password',
        password_confirmation: 'password',
      )
  end

  scenario 'They can login with valid user credentials' do
    visit login_path

    fill_in 'email', with: 'alihashemi.ca@gmail.com'
    fill_in 'password', with: 'password'

    click_on 'Submit'

    expect(page).to have_content('Logout')
  end
end