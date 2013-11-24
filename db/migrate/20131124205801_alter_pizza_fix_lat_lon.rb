class AlterPizzaFixLatLon < ActiveRecord::Migration
  def change
 
 change_column :pizzas, :lat, :decimal, :precision =>15, :scale =>10 
 change_column :pizzas, :lon, :decimal, :precision =>15, :scale =>10

   


  end
end
