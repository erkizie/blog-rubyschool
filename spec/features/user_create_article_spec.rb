require 'rails_helper'

feature 'New article creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content 'new article'
  end

  scenario 'allows user to create new article' do
    visit new_article_path

    fill_in :article_title, :with => 'Title'
    fill_in :article_text, :with => 'Text'

    click_button 'Save Article'
  end
end