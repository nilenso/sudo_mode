class DummyController < ApplicationController
  require_password_confirmation_for :index

  def index
    render :text => "foo"
  end
end
