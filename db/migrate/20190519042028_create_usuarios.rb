class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :nombre_usuario
      t.string :password
      t.string :email
      t.integer :telefono
      t.date :fecha_nacimiento

      t.timestamps
    end
  end
end
