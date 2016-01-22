class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Nombre
      t.string :Correo
      t.string :Contraseña
      t.string :Confirmar_contraseña

      t.timestamps null: false
    end
  end
end
