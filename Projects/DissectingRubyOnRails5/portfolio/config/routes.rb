Rails.application.routes.draw do
  devise_for :users

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'react-items', to: 'personal_portfolios#react'
  get 'portfolio/:id', to: 'personal_portfolios#show', as: 'personal_portfolio_show'

  resources :personal_portfolios, except: [:show]

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
