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


  def create
    @post = Post.new(post_params)

    render :new
end
def datos
  @post = Post.find(params[:id])
end
def new
  @posts = Post.all
end




private
  def post_params
    params.require(:post).permit(:Nombre, :apellido, :email,:dni , :telef,:contra)
  end

end
