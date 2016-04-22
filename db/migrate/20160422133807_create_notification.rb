class CreateNotification < ActiveRecord::Migration
  def change
    create_table :notification do |t|
      t.references :user, index: true, foreign_key: true
      t.string :notification

      t.timestamps null: false
    end
  end
end
