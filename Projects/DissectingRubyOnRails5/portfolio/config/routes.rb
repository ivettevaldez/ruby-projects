Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'react-items', to: 'personal_portfolios#react'
  get 'portfolio/:id', to: 'personal_portfolios#show', as: 'personal_portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
  
  resources :personal_portfolios, except: [:show]

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
