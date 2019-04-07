Rails.application.routes.draw do
  devise_for :users
  root 'health#index'

  get "/health/morning_new" => 'health#morning_new'
  post "/health/morning_create" => 'health#morning_create'
  get "/health/morning_response" => 'health#morning_response'

  get "/health/night_new" => 'health#night_new'
  post "/health/night_create" => 'health#night_create'
  get "/health/night_response" => 'health#night_response'

  get "/data_response" => 'health#data_response'

  post "/data_create" => 'health#data_create'
end
