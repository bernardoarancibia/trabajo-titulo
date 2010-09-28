class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.integer :categoria_id
      t.integer :proveedor_id
      t.string :nombre , :limit => 50, 
	  :unique => true, :null => false
      t.boolean :granel, :default => false, 
	  :null => false
      t.integer :precio, :null => false
      t.integer :stock_real, :limit => 1, 
	  :default => 0
      t.integer :stock_critico, :limit => 1, 
	  :default => 0
      t.timestamps
    end
  end
end
