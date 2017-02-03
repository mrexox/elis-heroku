Rails.application.routes.draw do

  root 'main_page#home'

  get 'blog', to: 'main_page#blog'
  get 'shop', to: 'main_page#shop'
  get 'contacts', to: 'main_page#contacts'

  resources :posts do |p|
    # add delete here
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
