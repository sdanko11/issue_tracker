class AddCategoryIdToIssues < ActiveRecord::Migration
  def up
     add_column :issues, :category_id, :integer
  end
  def down
      remove_column :issues, :category_id
  end
end
