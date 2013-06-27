require 'spec_helper'

class ApplicationController < ActionController::Base
end

describe SudoMode::Concerns::RequirePasswordConfirmation do
  controller do
    require_password_confirmation_for :index

    def index
      render :text => "index called"
    end
  end

  it "" do
    controller.stub_chain(:current_user, :authenticate).and_return(false)
    get :index
  end
end
