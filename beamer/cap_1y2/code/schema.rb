class CreateVendedores < ActiveRecord::Migration                                               
  def self.up
    create_table :vendedores do |t|
      t.integer :rut_vendedor, 
        :limit => 8, :null => false
      t.string  :dv, 
        :limit => 1, :null => false
      t.string :password, 
        :limit => 15, :null => false
      t.boolean :administrador, 
        :default => false
      t.string :nombre, 
        :limit => 30
      t.timestamps
    end
  end
end
