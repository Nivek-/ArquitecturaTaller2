class Asignatura < ApplicationRecord
  belongs_to :profesor
  belongs_to :departamento
end
