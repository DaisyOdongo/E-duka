class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :description
      t.string :payment_option
      t.string :payment_details
      t.string :activation_code, default: [], array: true
      t.boolean :activated
      t.datetime :activated_at

      t.timestamps
    end
  end
end


