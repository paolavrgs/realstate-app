class CreateCotizations < ActiveRecord::Migration[5.2]
  def change
    create_table :cotizations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :message
      t.integer :product_id

      t.timestamps
    end
  end
end
