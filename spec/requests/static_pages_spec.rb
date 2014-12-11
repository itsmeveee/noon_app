require 'spec_helper'

describe "Static pages" do 
	describe "Home page" do

		it "should have the h1 'This is the home page' " do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'This is the home page')
		end
it "should have the title 'Home'" do
	visit '/static_pages/home'
	page.should have_selector('title', :text => 'Home')

end

	end

	describe "Help page" do
		it "should have the content 'Help Page'" do
			visit '/static_pages/help'
			page.should have_content('This is the help page')
		end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Help')
		end
	end

	describe "About page" do
		it "should have the content 'This is the about page'" do
		visit '/static_pages/about'
		page.should have_content ('About Page')
	end
	it "should have the title 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => 'About')
	end

end

describe "Contact page" do
	it "should have the h1 'This is the contact page'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => 'This is the contact page')
	end
	it "should have the title 'Contact Page'" do
		visit '/static_pages/contact'
		page.should have_selector('title', :text => 'Contact Page')
	end
end

describe "Find page" do
	it "should have the h1 'This is the find page'" do
		visit '/static_pages/find'
		page.should have_selector('h1', :text => 'This is the find page')
	end
	it "should have the title 'Find page'" do
		visit '/static_pages/find'
		page.should have_selector('title', :text => 'Find Page')
	end
end
 	
end