class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.integer :numero_aula
      t.string :edificio

      t.timestamps
    end
  end
end
