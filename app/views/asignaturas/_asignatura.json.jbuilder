json.extract! asignatura, :id, :nombre, :creditos, :profesor_id, :departamento_id, :created_at, :updated_at
json.url asignatura_url(asignatura, format: :json)
