require_dependency "sudo_mode/application_controller"

module SudoMode
  class ConfirmationController < ApplicationController
    def new
      @submit_path = params[:redirect_to]
      @method = params[:method]
    end
  end
end
