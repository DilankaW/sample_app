require 'spec_helper'

describe PagesController do
  render_views

  # Run Before Tests #
  
  before(:each) do
    
    @base_title = "Ruby on Rails Tutorial Sample App"
  end





  # Home Page Tests #

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "should have the right title" do
    get 'home'
    response.should have_selector("title", :content => @base_title + " | Home")
  end

  # Contact Page Tests #

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end 

  it "should have the right title" do
    get 'contact'
    response.should have_selector("title", :content => @base_title +  " | Contact")
  end

  # About Page Tests #

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => @base_title + " | About")
    end

    # Help Page Tests #
    
    describe "GET 'help'" do
      it "should be successful" do
        get 'help'
        response.should be_success
      end
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => @base_title + " | Help")
    end


end
