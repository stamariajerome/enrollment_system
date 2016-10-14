Rails.application.routes.draw do
  # Sessions route
  root "sessions#new"
  post "/", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :enrollments, only: [:index]

  resources :my_schedules, only: [:index] do
    resources :subjects, only: [:index]
  end
end
