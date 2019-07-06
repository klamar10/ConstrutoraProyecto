class WelcomeController < ApplicationController
  def index
  end
  
  def RegProy
  end

  def mimetodo
  		puts "Parametros obtenidos"
  	a = params[:noticia][:titulo]
  	b = params[:noticia][:descripcion]
    c = params[:noticia][:Correo]
  	puts a
  	puts b
    puts c
  end

  def Servicio
  end
  
  def iniciosesion
    render :layout => true
  end

  def create
   
  end
  def datos

  end
  def new

  end




private
  def post_params
 
  end

end
