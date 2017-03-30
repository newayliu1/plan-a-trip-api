# frozen_string_literal: true
Rails.application.routes.draw do
  resources :attractions, except: [:new, :edit]
  resources :trips, except: [:new, :edit]
  resources :examples, except: [:new, :edit]

  get '/search' => 'attractions#search'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
