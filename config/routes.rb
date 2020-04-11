Rails.application.routes.draw do

root 'book#top'
get '/book' => 'book#index'
resources :book
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
