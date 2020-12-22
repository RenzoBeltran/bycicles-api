Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
    post '/signup', to: 'registrations#create'
    post '/signin', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
  scope :api do
    resources :categories
    resources :products
  end
end
