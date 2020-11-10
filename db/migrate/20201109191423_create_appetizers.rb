class CreateAppetizers < ActiveRecord::Migration[6.0]
  def change
    create_table :appetizers do |t|
      t.string :title
      t.string :image_src
      t.integer :rating
      t.timestamps
    end
  end
end
