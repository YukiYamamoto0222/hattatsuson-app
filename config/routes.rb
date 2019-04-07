Rails.application.routes.draw do
  devise_for :users
  root 'health#index'

  get "/health/morning_new" => 'health#morning_new'

end
