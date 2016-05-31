Rails.application.routes.draw do
  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

  # Routes for the Food resource:
  # CREATE
  get "/foods/new", :controller => "foods", :action => "new"
  post "/create_food", :controller => "foods", :action => "create"

  # READ
  get "/foods", :controller => "foods", :action => "index"
  get "/foods/:id", :controller => "foods", :action => "show"

  # UPDATE
  get "/foods/:id/edit", :controller => "foods", :action => "edit"
  post "/update_food/:id", :controller => "foods", :action => "update"

  # DELETE
  get "/delete_food/:id", :controller => "foods", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
