# == Route Map
#
#                    Prefix Verb   URI Pattern                                               Controller#Action
#    category_subcategories GET    /categories/:category_id/subcategories(.:format)          subcategories#index
#                           POST   /categories/:category_id/subcategories(.:format)          subcategories#create
#  new_category_subcategory GET    /categories/:category_id/subcategories/new(.:format)      subcategories#new
# edit_category_subcategory GET    /categories/:category_id/subcategories/:id/edit(.:format) subcategories#edit
#      category_subcategory GET    /categories/:category_id/subcategories/:id(.:format)      subcategories#show
#                           PATCH  /categories/:category_id/subcategories/:id(.:format)      subcategories#update
#                           PUT    /categories/:category_id/subcategories/:id(.:format)      subcategories#update
#                           DELETE /categories/:category_id/subcategories/:id(.:format)      subcategories#destroy
#                categories GET    /categories(.:format)                                     categories#index
#                           POST   /categories(.:format)                                     categories#create
#              new_category GET    /categories/new(.:format)                                 categories#new
#             edit_category GET    /categories/:id/edit(.:format)                            categories#edit
#                  category GET    /categories/:id(.:format)                                 categories#show
#                           PATCH  /categories/:id(.:format)                                 categories#update
#                           PUT    /categories/:id(.:format)                                 categories#update
#                           DELETE /categories/:id(.:format)                                 categories#destroy
#                      root GET    /                                                         categories#index
#                      help GET    /help(.:format)                                           pages#help
#                     scams GET    /scams(.:format)                                          pages#scams
#                    safety GET    /safety(.:format)                                         pages#safety
#                     terms GET    /terms(.:format)                                          pages#terms
#                   privacy GET    /privacy(.:format)                                        pages#privacy
#                     about GET    /about(.:format)                                          pages#about
#                   contact GET    /contact(.:format)                                        pages#contact
#

Rails.application.routes.draw do

  resources :categories do
    resources :subcategories 
  end

  resources :listings do
    collection do
      get 'search'
    end
  end


  root 'categories#index'

  match '/help', to: 'pages#help', via: :get
  match '/scams', to: 'pages#scams', via: :get
  match '/safety', to: 'pages#safety', via: :get
  match '/terms', to: 'pages#terms', via: :get
  match '/privacy', to: 'pages#privacy', via: :get
  match '/about', to: 'pages#about', via: :get
  match '/contact', to: 'pages#contact', via: :get
  match '/subcategories/find_by_category', to: 'subcategories#find_by_category', via: :post
  
  end
