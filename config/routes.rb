Rails.application.routes.draw do
  resources :artists
  resources :instruments
  resources :artist_instruments, only: [:new, :create]
end
