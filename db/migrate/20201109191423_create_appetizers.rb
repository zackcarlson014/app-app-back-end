class CreateAppetizers < ActiveRecord::Migration[6.0]
  def change
    create_table :appetizers do |t|
      t.string :title
      t.integer :prep_time
      t.integer :cook_time
      t.integer :rating

      t.timestamps
    end
  end
end
