class AddScreenShotAndProjectIdToBugs < ActiveRecord::Migration[5.1]
  def change
  	add_column :bugs, :screen_shot ,:string
  	add_column :bugs, :project_id ,:integer, index: true


  	add_index :bugs, [:title, :project_id], :unique => true
  end
end
