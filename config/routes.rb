Rails.application.routes.draw do
root :to => 'menu#inicio'	
  get 'menu/inicio'
  get 'menu/Nosotros'
  get 'proyecto_vista/proyecto'  
  get 'proyecto_vista/ubicacion'

  resources :posts
  get 'welcome/index'
  get 'welcome/RegProy'
  get 'welcome/Servicio'
  post 'pages/mimetodo'
  get 'proyecto_vista/caracteristica'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
