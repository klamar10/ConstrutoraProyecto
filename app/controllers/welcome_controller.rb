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
end
