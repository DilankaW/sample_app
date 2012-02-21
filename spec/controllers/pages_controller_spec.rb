require 'spec_helper'

describe PagesController do
  render_views

  # Home Page Tests #

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  it "should have the right title" do
    get 'home'
    response.should have_selector("title", :content => " | Home")
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
    response.should have_selector("title", :content => " | Contact")
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
      response.should have_selector("title", :content => " | About")
    end

end
