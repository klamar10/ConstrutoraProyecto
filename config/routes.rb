Rails.application.routes.draw do
root :to => 'menu#inicio'	
  get 'menu/inicio'
  get 'menu/Nosotros'
  get 'proyecto_vista/proyecto'  
  get 'proyecto_vista/ubicacion'
  get 'proyecto_vista/PBarranco'
  get 'proyecto_vista/PMiraflores'
  get 'proyecto_vista/PSurco'
  
  resources :posts
  get 'welcome/index'
  get 'welcome/RegProy'
  get 'welcome/Servicio'
  post 'pages/mimetodo'
  get 'proyecto_vista/caracteristica'
  get 'proyecto_vista/departamento'
  get 'proyecto_vista/plano'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
