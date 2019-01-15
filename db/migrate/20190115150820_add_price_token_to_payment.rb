class AddPriceTokenToPayment < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :price, :integer
    add_column :payments, :token, :string
  end
end
