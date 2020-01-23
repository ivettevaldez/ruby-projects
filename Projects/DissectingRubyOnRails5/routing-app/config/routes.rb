Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'advertising/soifjoisdf/lead', to: 'pages#contact', as: 'lead'

  resources :blogs
end
