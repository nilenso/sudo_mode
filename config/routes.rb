SudoMode::Engine.routes.draw do
  resources :confirmation, :only => :new
end
