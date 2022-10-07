Rails.application.routes.draw do

  root "pages#home"

  resources :movies, only: %i[index show]
  resources :lists, only: %i[index show new create]
end
