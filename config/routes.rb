Rails.application.routes.draw do

  #Add routing to the profile page
  get 'profile/index'
  get 'profile/edit'
  patch 'profile/update'
  put 'profile/update'
  get 'profile/change_password'
  patch 'profile/update_password'
  put 'profile/update_password'

  resources :articles do
    resources :comments
  end

  get 'welcome/index'
  get 'welcome/about_us'
  root 'welcome#index'

  #Add routing to the sign up page
  get 'signup/signup'
  get "signup", :to => "signup#signup"
  post 'signup/create'

  get 'login' => 'sessions#index'
  post 'login' => 'sessions#login'
  delete 'logout' => 'sessions#logout'

  get ':controller(/:action)'
  get ':controller(/:action(/:id))(.:format)'


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
