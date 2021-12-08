Rails.application.routes.draw do
  devise_for :users
  root to: "actors#index"

  # get 'actors/index'
end
