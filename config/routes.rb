Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :urls, only: [:create]
  get '/top' => 'urls#top', as: :top
  get '/:uuid' => 'urls#redirect', as: :redirect
end
