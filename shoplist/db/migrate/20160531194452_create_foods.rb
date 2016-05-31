class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :list_id
      t.string :user_id
      t.integer :ideal_number
      t.integer :safety_level
      t.integer :current_number
      t.string :image
      t.string :name

      t.timestamps

    end
  end
end
