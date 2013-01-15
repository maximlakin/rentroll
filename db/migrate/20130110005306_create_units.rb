class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :property_id, :null => false
      t.integer :unumber, :null => false
      t.date :move_in, :null => false
      t.decimal :current_rent, :precision=>7, :scale=>2, :null => false

      t.timestamps
    end
  end
end
