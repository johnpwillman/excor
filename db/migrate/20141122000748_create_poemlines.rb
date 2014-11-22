class CreatePoemlines < ActiveRecord::Migration
  def change
    create_table :poemlines do |t|
      t.integer :user_id
      t.integer :poem_id
      t.text :line
      t.integer :votes

      t.timestamps
    end
  end
end
