class CreateAlumnos < ActiveRecord::Migration[5.2]
  def change
    create_table :alumnos do |t|
      t.integer :credito_obtenido
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
