Rails.application.routes.draw do
  mount SudoMode::Engine => "/sudo_mode"
end
