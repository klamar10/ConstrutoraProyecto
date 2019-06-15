Rails.application.routes.draw do
root :to => 'menu#inicio'	
  get 'menu/inicio'

  get 'proyecto_vista/proyecto'  


  resources :posts
  get 'welcome/index'
  get 'welcome/RegProy'
  get 'welcome/Servicio-Cliente'
  post 'pages/mimetodo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
