require 'rails_helper'

feature 'New article creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content 'new article'
  end
end