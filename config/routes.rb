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
    post '/add_copy_ferm'  => 'recipes#add_copy_ferm',  as: :add_copy_ferm
    post '/add_copy_hop'   => 'recipes#add_copy_hop',   as: :add_copy_hop
    post '/add_copy_yeast' => 'recipes#add_copy_yeast', as: :add_copy_yeast
    post '/add_copy_other' => 'recipes#add_copy_other', as: :add_copy_other
  end

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
