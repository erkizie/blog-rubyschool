require 'rails_helper'

feature 'New account creation' do
  scenario 'allows visitor to create new account' do
    sign_up
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end