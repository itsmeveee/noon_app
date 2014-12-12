require 'spec_helper'

describe "Static pages" do 

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe "Home page" do

		it "should have the h1 'This is the home page' " do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'This is the home page')
		end
it "should have the base title" do
	visit '/static_pages/home'
	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
end
	it "should not have a custom page title" do
		visit '/static_pages/home'
		page.should_not have_selector('title', :text => '| Home')
	end
end

	describe "Help page" do
		it "should have the content 'Help Page'" do
			visit '/static_pages/help'
			page.should have_content('This is the help page')
		end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end

	describe "About page" do
		it "should have the content 'This is the about page'" do
		visit '/static_pages/about'
		page.should have_content ('About Page')
	end
	it "should have the title 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => "#{base_title} | About")
	end

end

describe "Contact page" do
	it "should have the h1 'This is the contact page'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => 'This is the contact page')
	end
	it "should have the title 'Contact Page'" do
		visit '/static_pages/contact'
		page.should have_selector('title', :text => "#{base_title} | Contact")
	end
end

describe "Find page" do
	it "should have the h1 'This is the find page'" do
		visit '/static_pages/find'
		page.should have_selector('h1', :text => 'This is the find page')
	end
	it "should have the title 'Find page'" do
		visit '/static_pages/find'
		page.should have_selector('title', :text => "#{base_title} | Find")
	end
end
 	
end