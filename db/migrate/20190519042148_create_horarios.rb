class CreateHorarios < ActiveRecord::Migration[5.2]
  def change
    create_table :horarios do |t|
      t.integer :bloque
      t.integer :dia_de_la_semana
      t.references :asignatura, foreign_key: true
      t.references :aula, foreign_key: false

      t.timestamps
    end
  end
end
