require 'rails_helper'

feature 'Welcome' do

  scenario 'User sees headline' do

    visit root_path
    expect(page).to have_content("Hello World")
  end
end
