class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details, :id => false do |t|
      t.string :item, index: true
      t.integer :price
      t.integer :amount
      t.string :comment
      t.references :user, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

end
