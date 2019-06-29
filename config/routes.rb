Rails.application.routes.draw do
root :to => 'menu#inicio'	
  get 'menu/inicio'
  get 'menu/Nosotros'
  post 'pages/mimetodo'
  resources :posts

  #welcom / registrar

  get 'welcome/index'
  get 'welcome/RegProy'
  get 'welcome/Cotizaciones'
  get 'welcome/iniciosesion'

  get 'welcome/Servicio'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes Yuliza
  get '/proyecto', to: 'proyecto_vista#proyecto'
  get '/proyecto/:id', to: 'proyecto_vista#detalle'
  get '/proyecto_vista/consultar'
  get '/ubicacion',  to: 'proyecto_vista#ubicacion'


end
