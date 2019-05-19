class Horario < ApplicationRecord
  belongs_to :asignatura
  belongs_to :aula
end
