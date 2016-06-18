# == Route Map
#
#      Prefix Verb   URI Pattern                Controller#Action
# enterprises GET    /enterprises(.:format)     enterprises#index
#             POST   /enterprises(.:format)     enterprises#create
#  enterprise GET    /enterprises/:id(.:format) enterprises#show
#             PATCH  /enterprises/:id(.:format) enterprises#update
#             PUT    /enterprises/:id(.:format) enterprises#update
#             DELETE /enterprises/:id(.:format) enterprises#destroy
#     qrcodes GET    /qrcodes(.:format)         qrcodes#index
#             POST   /qrcodes(.:format)         qrcodes#create
#      qrcode GET    /qrcodes/:id(.:format)     qrcodes#show
#             PATCH  /qrcodes/:id(.:format)     qrcodes#update
#             PUT    /qrcodes/:id(.:format)     qrcodes#update
#             DELETE /qrcodes/:id(.:format)     qrcodes#destroy
#      wechat POST   /wechat(.:format)          wechats#create
#             GET    /wechat(.:format)          wechats#show
#       users GET    /users(.:format)           users#index
#             POST   /users(.:format)           users#create
#        user GET    /users/:id(.:format)       users#show
#             PATCH  /users/:id(.:format)       users#update
#             PUT    /users/:id(.:format)       users#update
#             DELETE /users/:id(.:format)       users#destroy
#

Rails.application.routes.draw do
  resources :enterprises
  resources :qrcodes
  resource :wechat, only: [:show, :create]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
