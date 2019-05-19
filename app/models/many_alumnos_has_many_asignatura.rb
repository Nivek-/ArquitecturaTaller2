class ManyAlumnosHasManyAsignatura < ApplicationRecord
  belongs_to :alumno
  belongs_to :asignatura
end
