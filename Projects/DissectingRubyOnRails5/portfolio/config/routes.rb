Rails.application.routes.draw do
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'react-items', to: 'personal_portfolios#react'
  get 'portfolio/:id', to: 'personal_portfolios#show', as: 'personal_portfolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :personal_portfolios, except: [:show]

  root to: 'pages#home'
end
