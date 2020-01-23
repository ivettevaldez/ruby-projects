Rails.application.routes.draw do
  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'

  resources :blogs
end
