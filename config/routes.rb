Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :inventory do
    resources :feature 
	resources :demand
  end
  
  resources :report
  resources :demand
  resources :department
  resources :account
  resources :employee
  resources :sale
  resources :lend
  
 
  root 'welcome#index'

end