Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :leads do
  #   resources :notes
  # end

  # config/routes.rb
# resources :leads do
#   resources :notes
#   post 'claim', on: :member, to: 'leads#claim', as: 'claim'
# end
# config/routes.rb
resources :leads do
  post 'claim', on: :member
  resources :notes
end



  # Other resources
  # resources :categories, :products, :statuses, :types
end
