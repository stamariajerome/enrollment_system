Rails.application.routes.draw do
  root "sessions#new"
  post "/", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  namespace :student do
    # get :enrolmlent, on: :collection
    # resource :enrollment, only: [:new]
    # TODO this probably or use Registration as controller name
    get 'registration', to: 'registrations#new'
    # resources :enrollments, only: [:index]
    # resource :my_schedule, only: [:new]
  end

  namespace :admin do
    resources :users, only: [:index] do
      get :detailed, on: :collection
    end
  end
end
