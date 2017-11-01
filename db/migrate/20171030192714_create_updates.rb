class CreateUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :updates do |t|
      t.string "title"
      t.text "description"

      t.integer "project_id"


      t.timestamps
    end
  end
end
