class CreateDepartamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :departamentos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
