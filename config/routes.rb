Rails.application.routes.draw do
  resources :recipe_yeasts

  resources :recipe_hops

  resources :recipe_fermentables
  
  resources :recipe_others
  
  resources :fermentables
  
  resources :yeasts
  
  resources :recipes
  
  resources :others
  
  resources :mashs
  
  resources :fermentations
  
  resources :equipments
  
  resources :boils
  
  resources :hops
  
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
