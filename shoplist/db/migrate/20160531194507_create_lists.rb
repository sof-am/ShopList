class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :image
      t.string :user_id
      t.string :list_name

      t.timestamps

    end
  end
end
