class AddRaisedToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :raised, :integer
  end
end
