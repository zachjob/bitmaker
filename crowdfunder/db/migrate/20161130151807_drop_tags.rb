class DropTags < ActiveRecord::Migration[5.0]
  def change
    drop_table :tags
    drop_table :taggings
  end
end
