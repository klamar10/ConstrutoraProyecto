json.extract! usuario, :id, :nombre, :apellido, :email, :cont, :dni, :fech, :telef, :direccion, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
