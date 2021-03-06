Rails.application.routes.draw do
  
  root 'posts#my_page'
  
  get 'posts/my_page' => 'posts#my_page'
  
  post '/posts/:post_id/comments/create' => 'comments#create'

  get 'comments/destroy'

  get 'comments/edit'

  get 'comments/update'
  
  get '/posts/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
  
  post '/posts/:post_id/comments/update/:comment_id' => 'comments#update'
  
  get '/posts/:post_id/comments/edit/:comment_id' => 'comments#edit'
  
  post 'post/:post_id/like' => 'likes#like_toggle'
  

  devise_for :users
  resources :posts
  
  
  
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
