Rails.application.routes.draw do
  # root "home#index", page: "home"
  get 'home/index'
  get 'travels/homepage'
  get 'fashions/homepage'
  get 'pets/homepage'
  get 'sports/homepage'
  get 'foods/homepage'
  get 'musicals/homepage'
  # get 'home'
  root "welcome#index", page: "welcome"  
  # resources :home do
    # resources :articles do
    #   resources :comments
    # end
  # end
  resources :articles do
    resources :comments
  end  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'welcome#index'
end
