class AddCategoryIdtoProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :category_id, :integer
  end
end
