require 'spec_helper'

describe PagesController do
	render_views 
	
	#/!\ Also defined in layout_links_spec.rb
	before(:each) do
		@base_title = "My project"
	end
	
  describe "GET 'home'" do
  	it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have right title" do
				get 'home'
				response.should have_selector("title", 
										:content => @base_title+" | Home")
		end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
		end
		
		#Checking title
		it "should have right title" do
			get 'contact'
			response.should have_selector("title", :content=>@base_title+" | Contact")
		end
		
   end

	describe "GET 'about'" do
		it "should be successful" do
			get 'about'
			response.should be_success
		end		
	end
	
	#Help page
	describe "GET 'help'" do
		it "should be successful" do
			get 'help'
			response.should be_success
		end
		
		#Title
		it "should have right title" do
			get 'help'
			response.should have_selector("title", :content=>@base_title+" | Help")
		end
	end
	
end
