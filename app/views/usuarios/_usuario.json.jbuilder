json.extract! usuario, :id, :nombre, :apellido, :nombre_usuario, :password, :email, :telefono, :fecha_nacimiento, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
