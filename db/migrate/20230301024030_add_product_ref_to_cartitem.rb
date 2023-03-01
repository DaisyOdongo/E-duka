class AddProductRefToCartitem < ActiveRecord::Migration[7.0]
  def change
    add_reference :cartitems, :product, null: false, foreign_key: true
  end
end
