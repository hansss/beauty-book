BeautyBook::Application.routes.draw do

  devise_for :users
  resources :users, :controllers => {registrations: "registrations"}

  resources :salons

  resources :salons do
    resources :stylists
    resources :services
    resources :favorited_stylist_services, only: [:index]
    post 'stylist_services/:stylist_service_id/favourite', to: 'favorited_stylist_services#create', as: :favorited_stylist_service
    delete 'stylist_services/:stylist_service_id/unfavourite', to: 'favorited_stylist_services#destroy', as: :unfavorited_stylist_service
  end

  resources :appointments
  
  root to: 'home#index'
  

  devise_scope :user do
    get '/new_salons/sign_up(.:format)', to: 'registrations#new', as: 'new_salon_registration', defaults: { salon: true }
    post '/new_salons(.:format)', to: 'registrations#create', as: 'salon_registration', defaults: { salon: true }
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
