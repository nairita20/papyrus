Rails.application.routes.draw do
  # root "home#index", page: "home"
  
  get 'home/index'
  get 'authors/homepage'
  get 'authors/initiative_page'
  get 'authors/musings_page'

  get 'travels/homepage'
  get 'fashions/homepage'
  get 'pets/homepage'
  get 'sports/homepage'
  get 'foods/homepage'
  get 'musicals/homepage'
  get 'remembrances/homepage'
  get 'movies/homepage'
  get 'literaries/homepage'
  get 'artworks/homepage'
  
  # get 'travels/show'
  # get 'fashions/show'
  # get 'pets/show'
  # get 'sports/show'
  # get 'foods/show'
  # get 'musicals/show'
  # get 'remembrances/show'
  # get 'movies/show'
  # get 'literaries/show'
  # get 'artworks/show'
  # get 'home'

  get 'travels/index'
  get 'fashions/index'
  get 'pets/index'
  get 'sports/index'
  get 'foods/index'
  get 'musicals/index'
  get 'remembrances/index'
  get 'movies/index'
  get 'literaries/index'
  get 'artworks/index'

  root "welcome#index", page: "welcome"  
  
  resources :articles do
    resources :comments
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
end
