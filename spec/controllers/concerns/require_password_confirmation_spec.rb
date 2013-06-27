require 'spec_helper'

describe SudoMode::Concerns::RequirePasswordConfirmation do
  controller(DummyController) do
  end

  before(:each) do
    controller.stub_chain(:current_user, :authenticate).with("wrong_password").and_return(false)
    controller.stub_chain(:current_user, :authenticate).with(nil).and_return(false)
    controller.stub_chain(:current_user, :authenticate).with("bingo!").and_return(true)
  end

  it "redirects to confirmation page with the original url & method as params when the password is invalid" do
    get :index, :password => "wrong_password"
    response.should redirect_to(sudo_mode.new_confirmation_path(:redirect_to => '/anonymous', :method => :GET))
  end

  it "redirects to confirmation page with the original url & method as params when the password is not sent" do
    get :index
    response.should redirect_to(sudo_mode.new_confirmation_path(:redirect_to => '/anonymous', :method => :GET))
  end

  it "doesn't perform a redirect if the password is correct" do
    get :index, :password => "bingo!"
    response.should be_ok
  end
end
