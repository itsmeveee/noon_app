require 'spec_helper'

describe "UserPages" do
	subject { page }

	describe "signup page" do
		before { visit signup_path }
		it { should have_selector('h1', text: 'This is the signup page') }
		it { should have_selector('title', text: full_title('Signup Page')) }
	end
end
