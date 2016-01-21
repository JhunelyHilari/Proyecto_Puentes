class CreateUsers < ActiveRecord::Migration
  def change
  	add_column :users, :password, :string 
  	add_column :users, :password_confirmation, :string 
    create_table :users do |t|
      t.string :Nombre
      t.string :Correo
      t.string :password
      t.string :password_confirmation
      t.timestamps null: false
    end
  end
end
