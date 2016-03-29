Rails.application.routes.draw do
  root 'data#index'
  resources :data
  get 'data_minbre' => 'data#minbre_csv'
  get 'data_aitomo' => 'data#aitomo_csv'
  post 'scrape' => 'data#scrape_new'
  get 'regi_minbre' => 'data#regi_minbre'
  get 'regi_aitomo' => 'data#regi_aitomo'
  post 'regi_delete' => 'data#delete'
  get 'admin' => 'data#admin'
  post 'admin/edit' => 'data#admin_edit'
  get 'admin/edit/:id' => 'data#admin_edit_breeder'
  post 'admin/edit/:id/change' => 'data#admin_edit_breeder_change'

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
