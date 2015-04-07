require 'rails_helper'

feature 'Clients' do

  scenario 'User sees headline' do

    visit root_path
    expect(page).to have_content("Hello World")
  end
end
