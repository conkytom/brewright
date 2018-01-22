Rails.application.routes.draw do
  get 'yeasts/show'

  get 'yeasts/new'

  get 'yeasts/create'

  get 'yeasts/index'

  get 'yeasts/destroy'

  get 'yeasts/edit'

  get 'yeasts/update'

  get 'recipes/show'

  get 'recipes/new'

  get 'recipes/create'

  get 'recipes/index'

  get 'recipes/destroy'

  get 'recipes/edit'

  get 'recipes/update'

  get 'others/show'

  get 'others/new'

  get 'others/create'

  get 'others/index'

  get 'others/destroy'

  get 'others/edit'

  get 'others/update'

  get 'mashs/show'

  get 'mashs/new'

  get 'mashs/create'

  get 'mashs/index'

  get 'mashs/destroy'

  get 'mashs/edit'

  get 'mashs/update'

  get 'malts/show'

  get 'malts/new'

  get 'malts/create'

  get 'malts/index'

  get 'malts/destroy'

  get 'malts/edit'

  get 'malts/update'

  get 'fermentations/show'

  get 'fermentations/new'

  get 'fermentations/create'

  get 'fermentations/index'

  get 'fermentations/destroy'

  get 'fermentations/edit'

  get 'fermentations/update'

  get 'equipments/show'

  get 'equipments/new'

  get 'equipments/create'

  get 'equipments/index'

  get 'equipments/destroy'

  get 'equipments/edit'

  get 'equipments/update'

  get 'boils/show'

  get 'boils/new'

  get 'boils/create'

  get 'boils/index'

  get 'boils/destroy'

  get 'boils/edit'

  get 'boils/update'

  get 'hops/show'

  get 'hops/new'

  get 'hops/create'

  get 'hops/index'

  get 'hops/destroy'

  get 'hops/edit'

  get 'hops/update'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
