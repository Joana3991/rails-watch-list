Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/edit'

  root "pages#home"

  resources :movies, only: %i[index show]
  resources :lists do
    resources :bookmarks, only: %i[new edit]
  end
end
