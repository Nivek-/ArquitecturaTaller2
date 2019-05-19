class CreateManyAlumnosHasManyAsignaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :many_alumnos_has_many_asignaturas do |t|
      t.float :nota
      t.integer :ponderacion
      t.references :alumno, foreign_key: false
      t.references :asignatura, foreign_key: false

      t.timestamps
    end
  end
end
