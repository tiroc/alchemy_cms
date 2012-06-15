require 'spec_helper'

describe Admin::ContentsController do

	before(:each) do
		activate_authlogic
		UserSession.create FactoryGirl.create(:admin_user)
	end

	it "should update a content" do
		FactoryGirl.create(:element)
	  post :update, {:id => 1, :content => {:body => 'Peters Petshop'}}
		Element.first.ingredient('intro').should == "Peters Petshop"
	end

end
