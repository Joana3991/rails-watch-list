Rails.application.routes.draw do
  root "pages#home"

  resources :movies, only: %i[index show]
  resources :lists do
    resources :bookmarks, only: %i[new create edit]
  end
end
