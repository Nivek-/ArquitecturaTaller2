class CreateProfesors < ActiveRecord::Migration[5.2]
  def change
    create_table :profesors do |t|
      t.string :grado_academido
      t.string :titulo
      t.date :fecha_contrato
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
