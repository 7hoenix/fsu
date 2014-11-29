Rails.application.routes.draw do

  devise_for :users
  resources :instructors

  resources :lectures do
    resources :schedules
  end

  resources :attends

   root "lectures#index"
   get "about" => "pages#about"
   get 'pages/home'
   get 'pages/admin'

end
