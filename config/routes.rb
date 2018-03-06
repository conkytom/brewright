Rails.application.routes.draw do
  resources :fermentables
  resources :hops
  resources :yeasts
  resources :others
  
  resources :recipes do
    resources :recipe_fermentables
    resources :recipe_hops
    resources :recipe_yeasts
    resources :recipe_others
    post '/create_custom' => 'recipes#create_custom_ferm', as: :create_custom_ferm
    post '/customize_ferm' => 'recipes#customize_ferm', as: :customize_ferm
    post '/add_copy_2' => 'recipes#add_copy_2', as: :add_copy_2
  end

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
