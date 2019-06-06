Rails.application.routes.draw do
  get 'static/about'

  get 'static/services'

  #get 'home/index'
  root 'about/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
