class CreateAsignaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :asignaturas do |t|
      t.string :nombre
      t.integer :creditos
      t.references :profesor, foreign_key: false
      t.references :departamento, foreign_key: false

      t.timestamps
    end
  end
end
