Rails.application.routes.draw do

  resources :instructors

  resources :schedules

  resources :lectures

  devise_for :users


  get 'pages/home'

   root "lectures#index"
    get "about" => "pages#about"

end
