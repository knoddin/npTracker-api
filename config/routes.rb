Rails.application.routes.draw do
  resources :reviews, except: [:new, :edit]
  get '/my_reviews' => 'reviews#my_reviews'
  resources :parks, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show, :create]
end
