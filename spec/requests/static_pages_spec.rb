require 'spec_helper'

describe "StaticPages" do
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  
  describe "Home_pages" do
    it "should have the title 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have the title Home" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end 
  end
  describe "Help_pages" do
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  describe "About_pages" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'Ruby on Rails Tutorial Sample App | About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "Contact_pages" do
    it "should have the content 'Contactt Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the title 'Ruby on Rails Tutorial Sample App | Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
  end

end
