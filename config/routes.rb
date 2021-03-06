Rails.application.routes.draw do


  resources :formations do
    member do
      get 'show_plays'
    end
  end

  resources :roles, only: [:destroy]

  resources :events
  resources :situations
  resources :itineraries
  resources :seasons do
    collection do
      get 'choose'
    end
  end

  get 'calendars/index'


  resources :teams
  resources :games do
    member do
      get 'player_stats'
      post 'player_make_stats'
      get 'game_stats'
      post 'make_game_stats'
    end
  end

  resources :players do
    member do
        get 'print_show'
        get 'show_stats'
        get 'add_position'
        post 'position_added'
    end
  end

  resources :stat_types


  resources :positions do
    put :sort, on: :collection
    collection do
      get 'print_index'
    end
  end

  resources :dashboards
  devise_for :users, :controllers => { :invitations => 'users/invitations' }

  root 'dashboards#index'


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
