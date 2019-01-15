class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.bigint :hotel_id, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
