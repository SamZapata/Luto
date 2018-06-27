Rails.application.routes.draw do
  
  resources :forms
  resources :tipo_answers
  #routes for Answers
  resources :answers
  #routes for Questions
  resources :questions

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
