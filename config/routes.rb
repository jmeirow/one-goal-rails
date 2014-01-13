# == Route Map (Updated 2014-01-11 09:35)
#
#               Prefix Verb   URI Pattern                         Controller#Action
#    edit_current_user GET    /user/edit(.:format)                users#edit
#               signup GET    /signup(.:format)                   users#new
#                login GET    /login(.:format)                    sessions#new
#               logout GET    /logout(.:format)                   sessions#logout
#                 home GET    /home(.:format)                     sessions#home
#                about GET    /about(.:format)                    sessions#about
#  determine_next_step GET    /determine_next_step(.:format)      sessions#determine_next_step
#  unauthorized_access GET    /unauthorized_access(.:format)      sessions#unauthorized_access
# complete_action_step GET    /complete_action_step/:id(.:format) action_steps#complete_action_step
#              pending GET    /pending(.:format)                  web_resources#pending
#               review GET    /review/:id(.:format)               web_resources#review
#                  faq GET    /faq(.:format)                      sessions#faq
#             sessions GET    /sessions(.:format)                 sessions#index
#                      POST   /sessions(.:format)                 sessions#create
#          new_session GET    /sessions/new(.:format)             sessions#new
#         edit_session GET    /sessions/:id/edit(.:format)        sessions#edit
#              session GET    /sessions/:id(.:format)             sessions#show
#                      PATCH  /sessions/:id(.:format)             sessions#update
#                      PUT    /sessions/:id(.:format)             sessions#update
#                      DELETE /sessions/:id(.:format)             sessions#destroy
#                users GET    /users(.:format)                    users#index
#                      POST   /users(.:format)                    users#create
#             new_user GET    /users/new(.:format)                users#new
#            edit_user GET    /users/:id/edit(.:format)           users#edit
#                 user GET    /users/:id(.:format)                users#show
#                      PATCH  /users/:id(.:format)                users#update
#                      PUT    /users/:id(.:format)                users#update
#                      DELETE /users/:id(.:format)                users#destroy
#                goals GET    /goals(.:format)                    goals#index
#                      POST   /goals(.:format)                    goals#create
#             new_goal GET    /goals/new(.:format)                goals#new
#            edit_goal GET    /goals/:id/edit(.:format)           goals#edit
#                 goal GET    /goals/:id(.:format)                goals#show
#                      PATCH  /goals/:id(.:format)                goals#update
#                      PUT    /goals/:id(.:format)                goals#update
#                      DELETE /goals/:id(.:format)                goals#destroy
#         action_steps GET    /action_steps(.:format)             action_steps#index
#                      POST   /action_steps(.:format)             action_steps#create
#      new_action_step GET    /action_steps/new(.:format)         action_steps#new
#     edit_action_step GET    /action_steps/:id/edit(.:format)    action_steps#edit
#          action_step GET    /action_steps/:id(.:format)         action_steps#show
#                      PATCH  /action_steps/:id(.:format)         action_steps#update
#                      PUT    /action_steps/:id(.:format)         action_steps#update
#                      DELETE /action_steps/:id(.:format)         action_steps#destroy
#              members GET    /members(.:format)                  members#index
#                      POST   /members(.:format)                  members#create
#           new_member GET    /members/new(.:format)              members#new
#          edit_member GET    /members/:id/edit(.:format)         members#edit
#               member GET    /members/:id(.:format)              members#show
#                      PATCH  /members/:id(.:format)              members#update
#                      PUT    /members/:id(.:format)              members#update
#                      DELETE /members/:id(.:format)              members#destroy
#         system_texts GET    /system_texts(.:format)             system_texts#index
#                      POST   /system_texts(.:format)             system_texts#create
#      new_system_text GET    /system_texts/new(.:format)         system_texts#new
#     edit_system_text GET    /system_texts/:id/edit(.:format)    system_texts#edit
#          system_text GET    /system_texts/:id(.:format)         system_texts#show
#                      PATCH  /system_texts/:id(.:format)         system_texts#update
#                      PUT    /system_texts/:id(.:format)         system_texts#update
#                      DELETE /system_texts/:id(.:format)         system_texts#destroy
#        web_resources GET    /web_resources(.:format)            web_resources#index
#                      POST   /web_resources(.:format)            web_resources#create
#     new_web_resource GET    /web_resources/new(.:format)        web_resources#new
#    edit_web_resource GET    /web_resources/:id/edit(.:format)   web_resources#edit
#         web_resource GET    /web_resources/:id(.:format)        web_resources#show
#                      PATCH  /web_resources/:id(.:format)        web_resources#update
#                      PUT    /web_resources/:id(.:format)        web_resources#update
#                      DELETE /web_resources/:id(.:format)        web_resources#destroy
#      password_resets GET    /password_resets(.:format)          password_resets#index
#                      POST   /password_resets(.:format)          password_resets#create
#   new_password_reset GET    /password_resets/new(.:format)      password_resets#new
#  edit_password_reset GET    /password_resets/:id/edit(.:format) password_resets#edit
#       password_reset GET    /password_resets/:id(.:format)      password_resets#show
#                      PATCH  /password_resets/:id(.:format)      password_resets#update
#                      PUT    /password_resets/:id(.:format)      password_resets#update
#                      DELETE /password_resets/:id(.:format)      password_resets#destroy
#                 root GET    /                                   sessions#new
#

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

  get 'pending' => 'web_resources#pending', :as => :pending

  get 'review/:id' => 'web_resources#review', :as => :review

  get 'faq' => 'sessions#faq', :as => :faq

  get 'counts' => 'members#counts', :as => :counts


  resources :sessions
  resources :users
  resources :goals 
  resources :action_steps
  resources :members 
  resources :system_texts
  resources :web_resources
  resources :password_resets

  root 'sessions#new'


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
