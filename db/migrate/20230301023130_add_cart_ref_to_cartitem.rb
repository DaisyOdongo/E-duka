class AddCartRefToCartitem < ActiveRecord::Migration[7.0]
  def change
    add_reference :cartitems, :cart, null: false, foreign_key: true
  end
end
