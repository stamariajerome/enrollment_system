Rails.application.routes.draw do
  # Sessions route
  root "sessions#new"
  post "/", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Users route
  get "/dashboard", to: "users#dashboard"
  get "/my-schedule", to: "users#my_schedule"
  get "/enrollment", to: "users#enrollment"
end
