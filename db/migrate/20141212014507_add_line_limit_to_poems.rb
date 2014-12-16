class AddLineLimitToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :linelimit, :integer
  end
end
