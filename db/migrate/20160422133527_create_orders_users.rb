class CreateOrdersUsers < ActiveRecord::Migration
  def change
    create_table :orders_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.boolean :is_joined , :default => false


      t.timestamps null: false
    end
  end
end
