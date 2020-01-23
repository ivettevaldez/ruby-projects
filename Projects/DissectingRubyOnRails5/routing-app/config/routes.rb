Rails.application.routes.draw do
  get 'about', to: 'pages#about'

  # Custom hardcoded route using alias.
  get 'advertising/soifjoisdf/contact', to: 'pages#contact', as: 'contact'

  # Nested routes.
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  resources :blogs
  resources :posts

  # Route globbing.
  get 'posts/*missing', to: 'posts#missing'

  # Dynamic routes.
  get 'query/:else/:another', to: 'pages#something'
  get 'query/:else/', to: 'pages#something'

  # Root page (Home).
  root to: 'pages#home'
end
