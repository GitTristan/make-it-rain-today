require 'rails_helper'

feature 'Welcome' do

  scenario 'User sees headline' do

    visit root_path
    expect(page).to have_content("Partly Cloudy with a chance of Awesome!")
  end
end
