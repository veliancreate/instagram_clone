require 'rails_helper'

feature 'images' do 
  context 'no images have been added' do 
    scenario 'should display a prompt to add an image' do
      visit '/images'
      expect(page).to have_content('No images added yet')
      expect(page).to have_content('Add an image')
    end
  end  

end  