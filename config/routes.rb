OneGoal::Application.routes.draw do
  


  get 'user/edit' => 'users#edit', :as => :edit_current_user
  get 'signup' => 'users#new', :as => :signup
  get 'login' => 'sessions#new', :as => :login
  get 'logout' => 'sessions#logout', :as => :logout

  get 'home' => 'sessions#home', :as => :home
  get 'about' => 'sessions#about', :as => :about

  get 'determine_next_step'  => 'sessions#determine_next_step', :as => :determine_next_step
  get 'unauthorized_access' => 'sessions#unauthorized_access', :as => :unauthorized_access


  get 'complete_action_step/:id' => 'action_steps#complete_action_step', :as => :complete_action_step

  get 'resources' => 'sessions#resources', :as => :resources
  get 'faq' => 'sessions#faq', :as => :faq


  resources :sessions
  resources :users
  resources :goals 
  resources :action_steps
  resources :members 
  resources :system_texts

  root 'sessions#login'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
