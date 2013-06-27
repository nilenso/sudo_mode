module SudoMode
  class Engine < ::Rails::Engine
    initializer "sudo_mode.concerns" do
      ActiveSupport.on_load(:action_controller) do
        include SudoMode::Concerns::RequirePasswordConfirmation
      end
    end
  end
end
