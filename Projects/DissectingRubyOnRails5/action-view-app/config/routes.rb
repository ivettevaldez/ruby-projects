Rails.application.routes.draw do
  resources :blogs
  get 'guides/book'
end
