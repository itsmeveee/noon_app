require 'spec_helper'

describe "Static pages" do 

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	subject { page }

	describe "Home page" do
			before { visit root_path }
	it { should have_selector('h1', text: 'Welcome to the sample app') }
	it { should have_selector('title', text: full_title('')) }
end
	describe "Help page" do
		before { visit help_path }
		it { should have_selector('h1', text: 'This is the help page') }
		it { should have_selector('title', text: full_title('Help Page')) }
	end

	describe "About page" do
		before { visit about_path }
		it { should have_selector('h1', text: 'This is the about page') }
		it { should have_selector('title', text: full_title('About Page')) }
end

describe "Contact page" do
	before { visit contact_path }
	it { should have_selector('h1', text: 'This is the contact page') }
	it { should have_selector('title', text: full_title('Contact Page')) }
end

describe "Find page" do
	before { visit find_path }
	it { should have_selector('h1', text: 'This is the find page') }
	it { should have_selector('title', text: full_title('Find Page')) }
	end
describe "Login page" do
	before { visit login_path }
	it { should have_selector('h1', text: 'This is the login page') }
	it { should have_selector('title', text: full_title('Login Page')) }
	end

end