class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.String :name
      t.integer :price

      t.timestamps
    end
  end
end
