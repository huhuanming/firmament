# == Route Map
#
# Prefix Verb   URI Pattern          Controller#Action
# wechat POST   /wechat(.:format)    wechats#create
#        GET    /wechat(.:format)    wechats#show
#  users GET    /users(.:format)     users#index
#        POST   /users(.:format)     users#create
#   user GET    /users/:id(.:format) users#show
#        PATCH  /users/:id(.:format) users#update
#        PUT    /users/:id(.:format) users#update
#        DELETE /users/:id(.:format) users#destroy
#

Rails.application.routes.draw do
  resource :wechat, only: [:show, :create]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
