require 'spec_helper'

describe SudoMode::ConfirmationController do
  context "GET 'new'" do
    it "assigns submit_path" do
      get :new, :method => :GET, :redirect_to => "/anonymous", :use_route => :sudo_mode
      assigns(:submit_path).should == "/anonymous"
    end

    it "assigns method if it is passed in" do
      get :new, :method => :POST, :use_route => :sudo_mode
      assigns(:method).should == "POST"
    end
  end
end
