class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :details
      t.string :architect_name
      t.integer :rating
      t.integer :price
      t.string :design_img_url
      t.string :blueprint_one_url
      t.string :blueprint_two_url

      t.timestamps
    end
  end
end
