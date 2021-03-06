Rails.application.routes.draw do

  get 'trades/index'

  get 'trades/new/:id', to: 'trades#new', as: :new_trade_id

  get 'trades/create'

  get 'trades/show'

  get 'trades/exchange'

  resources :items, :trades
  devise_for :users  

  scope "api", defaults: {format: "json"} do
     resources :items
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'welcome#index'

  get '/users/:id', to: 'users#show', as: :user_profile  
  get '/users/:id/edit_profile', to: 'users#edit', as: :edit_profile, :as => :user
  put '/users/:id/edit_profile', to: 'users#update' 
  patch '/users/:id/edit_profile', to: 'users#update'
  get '/search' => 'items#search', as: :search_route
  post '/trades/create' => 'trades#create', as: :transaction
  post '/trades/exchange' => 'trades#exchange'




  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
