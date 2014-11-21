class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.integer :user_id
      t.string :title
      t.string :firstline
      t.integer :votes

      t.timestamps
    end
  end
end
